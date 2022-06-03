export interface NetworkingConfig {
    readonly chainId: string;
    readonly rpcUrl: string;
    readonly feeToken: string;
}

export const config: NetworkingConfig = {
    chainId: "Juno-1",
    rpcUrl: "https://rpc.juno.highlander-nodes.net:26797",
    feeToken: "ujuno"

};