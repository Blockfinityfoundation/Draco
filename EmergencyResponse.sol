contract PrivateRecords {

    mapping (address => mapping (bytes => bytes)) record;

    function setEntry(bytes key, bytes value){
        record[msg.sender][key] = value;
    }

    function getEntry(address owner, bytes key) returns (bytes){
        return record[owner][key];
    }

}
