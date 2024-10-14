local status, git = pcall(require, "git")
if (not status) then return end
git.setup {
    keymaps = {
        blame = "gb",
        browse = "go"
    },
    git_cmd = { "/usr/bin/git" } -- Set the git command explicitly as an array
}
