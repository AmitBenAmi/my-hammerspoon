function open_app(name)
    return function()
        hs.application.launchOrFocus(name)
        if name == 'Finder' then
            hs.appfinder.appFromName(name):activate()
        end
    end
end

function open_website(url)
    return function()
        hs.urlevent.openURL(url)
    end
end

hs.hotkey.bind({"alt", "ctrl"}, "S", open_app("Slack"))
hs.hotkey.bind({"alt", "ctrl"}, "S", open_app("Google Chrome"))
hs.hotkey.bind({"alt", "ctrl"}, "D", open_app("team-dsm"))
hs.hotkey.bind({"alt", "ctrl"}, "T", open_app("Terminal"))
hs.hotkey.bind({"alt", "ctrl"}, "P", open_app("airpods"))

hs.hotkey.bind({"alt", "ctrl"}, "A", open_website("https://sso.asurion.com:9031/idp/startSSO.ping?PartnerSpId=urn:amazon:webservices"))