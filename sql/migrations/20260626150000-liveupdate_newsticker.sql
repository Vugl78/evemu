-- Suppress the "GetNewsTickerData" SSL error in Crucible client
-- Patches holoscreenSvc.GetNewsTickerData to return None instead of fetching www.eveonline.com
-- +migrate Up
INSERT IGNORE INTO liveupdates (updateID, updateName, description, machoVersionMin, machoVersionMax, buildNumberMin, buildNumberMax, methodName, objectID, codeType, code)
VALUES (1, 'SuppressNewsTicker', 'Suppresses SSL error when news.eveonline.com is unreachable',
        0, 999999, 0, 999999,
        'GetNewsTickerData', 'holoscreenMgr', 'method',
        'def GetNewsTickerData(self):\n    return None\n');
-- +migrate Down
DELETE FROM liveupdates WHERE updateID = 1;
