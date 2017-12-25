from ansible.errors import AnsibleError, AnsibleParserError
from ansible.plugins.lookup import LookupBase

try:
    from __main__ import display
except ImportError:
    from ansible.utils.display import Display

    display = Display()


class LookupModule(LookupBase):
    def run(self, paths, variables=None, **kwargs):
        result = []

        def find_values(content, pattern):
            key = pattern
            for i in range(len(content)):
                if pattern in content[i]:
                    key += content[i+1] + ' '
            result.append(key)

        for path in paths:
            lookupfile = self.find_file_in_search_path(variables, 'lookup', path)
            display.vvvv("File lookup using %s as file" % lookupfile)
            try:
                if lookupfile:
                    contents, show_data = self._loader._get_file_contents(lookupfile)
                    contents = contents.split()
                    find_values(contents, 'dockerfile:')
                    find_values(contents, 'image:')
                    find_values(contents, 'container_name:')
                    find_values(contents, 'subnet:')
                else:
                    raise AnsibleParserError()
            except AnsibleParserError:
                raise AnsibleError("File doesn't exist: %s" % path)
        return result

