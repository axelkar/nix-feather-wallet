{
  description = "Nix Flake for Feather Wallet";

  inputs.flake-utils.url = "github:numtide/flake-utils";

  outputs = { self, flake-utils, nixpkgs }:
    flake-utils.lib.eachDefaultSystem
      (system:
        let pkgs = nixpkgs.legacyPackages.${system}; in
        {
          packages = {
            feather-wallet = pkgs.callPackage ./default.nix pkgs;
            default = self.packages.${system}.feather-wallet;
          };
        }
      );
}
