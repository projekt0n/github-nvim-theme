-- clear cache so this reloads changes.
-- useful for development
package.loaded["github-theme"] = nil
package.loaded["github-theme.util"] = nil
package.loaded["github-theme.colors"] = nil
package.loaded["github-theme.theme"] = nil
package.loaded["github-theme.config"] = nil

require("github-theme").setup()
