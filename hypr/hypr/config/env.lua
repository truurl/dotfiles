-- https://wiki.hypr.land/Configuring/Advanced-and-Cool/Environment-variables/

local HOME = os.getenv("HOME")

hl.env("NVD_BACKEND", "env")
hl.env("XMODIFIERS", "@im=ibus")
hl.env("SSH_AUTH_SOCK", "$XDG_RUNTIME_DIR/ssh-agent.socket")

-- Nvidia cache related variables
hl.env("__GL_SHADER_DISK_CACHE", "1") -- Force caching. It might not cache shaders sometimes
hl.env("__GL_SHADER_DISK_CACHE_PATH", HOME .. "/.cache/nv") -- Store shaders cache here
hl.env("__GL_SHADER_DISK_CACHE_SKIP_CLEANUP", "1") -- Do not cleanup nvidia shaders cache

-- Qt related environment variables
hl.env("QT_QPA_PLATFORM", "wayland")
hl.env("QT_QPA_PLATFORMTHEME", "qt6ct")
hl.env("QT_WAYLAND_DISABLE_WINDOWDECORATION", "1")
