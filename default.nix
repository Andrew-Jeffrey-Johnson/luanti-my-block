# default.nix
let
  # We pin to a specific nixpkgs commit for reproducibility.
  # Last updated: 2025-02-25. Check for new commits at https://status.nixos.org.
  pkgs = import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/3a05eebede89661660945da1f151959900903b6a.tar.gz") {};
in pkgs.mkShell {
  packages = [
    pkgs.luanti
    (pkgs.vscode-with-extensions.override {
      vscode = pkgs.vscodium;
      vscodeExtensions = with pkgs.vscode-extensions; [
        bbenoist.nix
        ms-python.python
        ms-azuretools.vscode-docker
        ms-toolsai.jupyter
        ms-toolsai.jupyter-renderers
        ms-toolsai.jupyter-keymap
        ms-toolsai.vscode-jupyter-cell-tags
        ms-toolsai.vscode-jupyter-slideshow
        batisteo.vscode-django
        bierner.markdown-mermaid
        james-yu.latex-workshop
        mkhl.direnv
        ] ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [
          {
            name = "vscode-mermaid-editor";
            publisher = "tomoyukim";
            version = "0.19.1";
            #sha256 = "";
            sha256 = "sha256-MZkR9wPTj+TwhQP0kbH4XqlTvQwfkbiZdfzA10Q9z5A=";
          }
          {
            name = "mermaid-markdown-syntax-highlighting";
            publisher = "bpruitt-goddard";
            version = "1.7.0";
            #sha256 = "";
            sha256 = "sha256-Vjmc9tlHSFdhhcSopUG3MnyBSi//B6cpnavqFLhVRho=";
          }
          {
            name = "quarto";
            publisher = "quarto";
            version = "1.118.0";
            #sha256 = "";
            sha256 = "sha256-fQMORF2LJKhkKbinex+c5I+kM5YM93W2XzOL8PMVZS0=";
          }
          {
            name = "vscode-tabby";
            publisher = "TabbyML";
            version = "1.20.1";
            #sha256 = "";
            sha256 = "sha256-/+l7TRFtO+TKmyBZ3fmbYWcP9QZ4ClHKuwDYaXKF8W8=";
          }
          {
            name = "sqlite-viewer";
            publisher = "qwtel";
            version = "0.10.2";
            #sha256 = "";
            sha256 = "sha256-5TqcxSJPSmLRBhrhVbAd1VdL2kyszezl8sSrlSynOms=";
          }
          {
            name = "latex-workshop";
            publisher = "james-yu";
            version = "10.8.0";
            #sha256 = "";
            sha256 = "sha256-tdQ3Z/OfNH0UgpHcn8Zq5rQxoetD61dossEh8hRygew=";
          }
          {
            name = "minetest-tools";
            publisher = "GreenXenith";
            version = "2.0.0";
            #sha256 = "";
            sha256 = "sha256-qSDjisE46PetiX/TChGRx7cOma1jOa+TOrv4gTiQ8/A=";
          }
          {
            name = "local-lua-debugger-vscode";
            publisher = "tomblind";
            version = "0.3.3";
            #sha256 = "";
            sha256 = "sha256-7uZHbhOa/GT9F7+xikaxuQXIGzre1q1uWTWaTJhi2UA=";
          }
        ];
      })
    ];
}
