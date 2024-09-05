{
  description = "bphenriques's knowledge base";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.05";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem
      (system:
        let pkgs = nixpkgs.legacyPackages.${system};
          hugoWrapper = pkgs.writeShellScriptBin "hugo-wrapper" ''
            ${pkgs.hugo}/bin/hugo server -D "$@"
          '';
        in
        {
          packages.default = hugoWrapper;
          devShells.default = pkgs.mkShell {
            buildInputs = [ pkgs.hugo ];
          };

        }
      );
}
