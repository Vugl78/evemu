#ifndef __KILLRIGHTDB_H_INCL__
#define __KILLRIGHTDB_H_INCL__

#include "ServiceDB.h"

class PyRep;
class Client;

class KillRightDB
: public ServiceDB
{
public:
    PyRep* GetKillRights(uint32 ownerID, uint32 targetID);
    int32 GrantKillRight(uint32 ownerID, uint32 targetID);
    bool ActivateKillRight(uint32 rightID, uint32 activatedBy);
    bool UpdateKillRight(uint32 rightID, int64 price, uint8 accessMask);
    bool DeleteKillRight(uint32 rightID);
};

#endif
