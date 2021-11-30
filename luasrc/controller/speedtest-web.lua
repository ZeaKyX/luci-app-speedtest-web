module("luci.controller.speedtest-web", package.seeall)

function index()
	if not (luci.sys.call("pidof speedtest-web > /dev/null") == 0) then
		return
	end
	
	entry({"admin", "system", "speedtest-web"}, template("speedtest-web/speedtest-web"), _("Speedtest Web"), 10).leaf = true
end
