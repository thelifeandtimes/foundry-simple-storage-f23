## Foundry

**Foundry is a blazing fast, portable and modular toolkit for Ethereum application development written in Rust.**

Foundry consists of:

- **Forge**: Ethereum testing framework (like Truffle, Hardhat and DappTools).
- **Cast**: Swiss army knife for interacting with EVM smart contracts, sending transactions and getting chain data.
- **Anvil**: Local Ethereum node, akin to Ganache, Hardhat Network.
- **Chisel**: Fast, utilitarian, and verbose solidity REPL.

## Documentation

https://book.getfoundry.sh/

## Usage

### Build

```shell
$ forge build
```

### Test

```shell
$ forge test
```

### Format

```shell
$ forge fmt
```

### Gas Snapshots

```shell
$ forge snapshot
```

### Anvil

```shell
$ anvil
```

### Deploy

```shell
$ forge script script/Counter.s.sol:CounterScript --rpc-url <your_rpc_url> --private-key <your_private_key>
```

### Cast

```shell
$ cast <subcommand>
```

### Help

```shell
$ forge --help
$ anvil --help
$ cast --help
```

## Other Notes about what I've Learned

So far, I've gotten more or less the hang of the end-to-end effort of writing a basic solidity contract. I've learned the the key elements of a solidity smart contract file, including the SPDX-License-Identifier and pragma solidity statements, how to do imports and inheritence, the differences between external, virtual, internal, and public functions, and some basics about how to structure a project. There is still much to learn, but overall I think I understand roughly how to go about building the ERC20 contracts that I want to create. Roughly speaking, I'll want to have a core ERC20 contract for which I'll probably import and inherit the ERC20 OpenZepplin contracts, and then a deployment factory from which I'll have a few constructor arguments as well as a list and mapping feature such that every piece of urbit address space has a finite token allowance. Basically each L1 Urbit ID TBA will be constrained to having a singular ERC20 in our fungible token ecosystem, with the possibility of having a future extension of the ecosystem where we support 'multi-identity relationship tokens' which are controlled/represent multiple L1 Urbit ID TBAs.
