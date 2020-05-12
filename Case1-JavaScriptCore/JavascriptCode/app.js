
// CONFIGURATION METHODS

function getContract(contractAbi) {
    try {
        var web3 = new Web3(new Web3.providers.HttpProvider("http://localhost:7545"));
        var contractAddress = "0xc481b3c43AF7e98c892995a48a1ebbAdd5ABaCb2";
        var contract = new web3.eth.Contract(contractAbi, contractAddress);
        return contract;
    } catch (e) {
        return e
    }
}

async function getAccount() {    
    try {
        var accounts = await web3.eth.getAccounts();
        return accounts[0];
    } catch (e) {
        return e
    }
}

// METHODS TO BE CALLED FROM SWIFT

async function getValor(contractAbi) {
    try {
      var contract = getContract(contractAbi);
      var valor = await contract.methods.valor().call();
      return valor;
    }
    catch (rejectedValue) {
      console.log(rejectedValue);
    }
}

async function incr(contractAbi) {
    try {
        var contract = getContract(contractAbi);
        var account = await getAccount();
        valor = await contract.methods.incr().send({from: account});
        return valor;
    }
    catch (rejectedValue) {
        console.log(rejectedValue);
    }
}

async function decr(contractAbi) {
    try {
        var contract = getContract(contractAbi);
        var account = await getAccount();
        valor = await contract.methods.decr().send({from: account});
        return valor;
    }
    catch (rejectedValue) {
        console.log(rejectedValue);
    }
}

async function reset(contractAbi) {
    try {
        var contract = getContract(contractAbi);
        var account = await getAccount();
        valor = await contract.methods.reset().send({from: account});
        return valor;
    }
    catch (rejectedValue) {
        console.log(rejectedValue);
    }
}
