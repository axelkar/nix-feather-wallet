pkgs:
pkgs.stdenv.mkDerivation rec {
  pname = "feather-wallet";
  version = "2.4.9";

  src = pkgs.fetchgit {
    url = "https://github.com/feather-wallet/feather";
    rev = version;
    sha256 = "sha256-AB1i4vxVdWK1K0ctC2FQa4opQV3OaYoh1ejdslER7cc=";
    fetchSubmodules = true;
  };
  nativeBuildInputs = with pkgs; [
    pkg-config
    qt6Packages.wrapQtAppsHook
  ];

  buildInputs = with pkgs; [
    cmake
    openssl

    unbound
    boost
    expat
    gnupg
    hidapi

    qt6Packages.qtbase
    qt6Packages.qtsvg
    qt6Packages.qtwebsockets
    qt6Packages.qtmultimedia
    qt6Packages.qtwayland

    libgcrypt
    libsodium
    libudev0-shim
    libunwind
    libusb1
    libzip
    hidapi

    protobuf
    qrencode
    zbar
    zeromq
  ];
}
