# BaseSci

[![Built on Fabulously Optimized](https://cdn.jsdelivr.net/npm/@intergrav/devins-badges@3/assets/cozy/built-with/fabulously-optimized_64h.png)](https://download.fo)

![Modrinth Downloads](https://img.shields.io/modrinth/dt/W7qkr930)

Welcome to BaseSci! This is a modpack that includes essential technical mods,
optimisation mods and Optifine-replacement mods. This modpack was originally
part of Sundawn MC, however due to Minecraft's change in update philosophy it
became impossible to keep Sundawn consistently up-to-date with the latest
Minecraft version.

This modpack aims to be an easy-to-install, easy-to-use one-stop shop for all
of your technical Minecraft needs. It simplifies installing the Masady and
Carpet mods on the latest version of Minecraft, and comes with the
Optifine-compatibility you've come to expect from modpacks like Fabulously
Optimized out-of-the-box.

The main goal of this pack is to keep up with the latest version of Minecraft.
Thus when a new version releases, it may become less stable for a little while
and may be missing some of the mods that it aims to have every version.

# Setting up a development environment

## Prerequisites

- [Go](https://go.dev/)
- [PrismLauncher](https://www.prismlauncher.org/)
- [OpenJDK 21](https://www.adoptium.net/temurin/releases/?os=any&arch=any&version=21)

## Install Packwiz

```bash
go install github.com/packwiz/packwiz@latest
```

## Set up development instance of Minecraft

Open PrismLauncher and add a new instance with the _Forge_ version listed in _pack.toml_ and run the instance once.

Download and add the latest [Packwiz Development installer](https://www.github.com/packwiz/packwiz-installer-bootstrap/releases) to the minecraft/ directory of the instance, make sure it is called _packwiz-installer-bootstrap.jar_. See below for the directory structure.

```
minecraft/
- packwiz-installer-bootstrap.jar
```

Now go into the settings of your instance, enter the _Custom Commands_ tab. Enable _Custom Commands_ and add the following as the pre-launch command:

```bash
"$INST_JAVA" -jar $INST_MC_DIR/packwiz-installer-bootstrap.jar http://localhost:8080/pack.toml
```

Now your instance is ready to be used for development and testing!

## Launch the modpack in the development instance

Clone this git repository.

```bash
git clone https://github.com/SlagterJ/uitstelgedrag-kitchen.git
```

Enter the repository.

```bash
cd uitstelgedrag-kitchen
```

Run packwiz for development.

```bash
packwiz serve
```

Now you can run your development instance and it will sync with your local changes.

Refer to the [packwiz tutorial](https://packwiz.infra.link/tutorials/creating/getting-started/) for adding, removing and pinning mods.

# Building the project

Build for release on Modrinth:

```bash
packwiz mr export
```

Build for release on CurseForge:

```bash
packwiz cf export
```

# License

This project is FOSS using Packwiz! Check out the GitHub!
