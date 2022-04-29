module.exports = {
    token: process.env.GITHUB_ACCESS_TOKEN,

    onboarding: false,
    requireConfig: false,

    autodiscover: false,
    repositories: [
        {
            repository: "brumhard/renovate-issue",
        }
    ],

    extends: ["config:base", "group:allNonMajor"],
    // Host rules/configuration including credentials.
    // https://docs.renovatebot.com/configuration-options/#hostrules
    hostRules: [
        {
            matchHost: "github.com",
            token: process.env.GITHUB_ACCESS_TOKEN,
        },
    ],

    patch: {
        enabled: true
    },
    minor: {
        enabled: true
    },
    major: {
        enabled: true
    },
    // Enable post-update options to be run after package/artifact updating.
    // https://docs.renovatebot.com/configuration-options/
    postUpdateOptions: ["gomodTidy", "gomodUpdateImportPaths"],
};
