GitHistoryView = require "./git-history-view"

class GitHistory

    config:
        diffWithHead:
            type: "boolean"
            default: no
        maxCommits:
            type: "integer"
            default: 100

    activate: ->
        atom.commands.add "atom-text-editor",
            "git-history:show-file-history": @_loadGitHistoryView

    _loadGitHistoryView: ->
        new GitHistoryView(atom.workspace.getActiveEditor()?.getPath())

module.exports = new GitHistory()
