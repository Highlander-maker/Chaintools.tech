import { CosmWasmClient, QueryClient } from "cosmwasm";


// This is your rpc endpoint
const rpcEndpoint = "https://rpc.juno.highlander-nodes.net:26797/";


async function main() {
  const client = await CosmWasmClient.connect(rpcEndpoint);
  console.log(client);
  await client.getBalance("juno1dru5985k4n5q369rxeqfdsjl8ezutch8y9vuau","ujuno")

}




main();