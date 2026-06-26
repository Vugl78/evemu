-- Kill Rights system: track and activate rights to legally attack aggressors
-- +migrate Up
CREATE TABLE IF NOT EXISTS chrKillRights (
    rightID INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    ownerID INT UNSIGNED NOT NULL,
    targetID INT UNSIGNED NOT NULL,
    price BIGINT UNSIGNED DEFAULT 0,
    accessMask TINYINT UNSIGNED DEFAULT 0,
    created BIGINT NOT NULL,
    expiryDate BIGINT NOT NULL,
    used TINYINT(1) DEFAULT 0,
    activatedBy INT UNSIGNED DEFAULT 0,
    INDEX idx_ownerID (ownerID),
    INDEX idx_targetID (targetID)
);
-- +migrate Down
DROP TABLE IF EXISTS chrKillRights;
