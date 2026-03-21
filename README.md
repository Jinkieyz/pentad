# PENTAD - 5-Segment Creature Generator

Generates organic 3D creatures using 5 merged Gielis supershapes.

## Quick Start

```bash
./run_pentad.sh           # 1 creature
./run_pentad.sh 10        # 10 creatures
./run_pentad.sh 5 --screenshot  # 5 with screenshots
```

## What is PENTAD?

PENTAD is based on the Gielis superformula (Johan Gielis, 2003) which can describe
almost all natural forms: starfish, shells, leaves, bacteria.

Each PENTAD creature consists of:
- 5 overlapping Gielis forms (supershapes)
- Fractal outgrowths at each level
- Randomly generated "DNA" with 48 parameters

The result is organic, asymmetric forms suitable for 3D printing
or glass casting.

## File Structure

```
pentad/
├── run_pentad.sh      # Run script
├── generate_pentad.py # Main script
├── lajfi/             # Support library
│   ├── gielis.py      # Superformula implementation
│   └── config.py      # Parameters
├── output/            # Generated STL files
└── examples/          # Example creatures
```

## Output

STL files are saved to `output/` with naming convention:
```
pentad_{NAME}_gen1_{TIMESTAMP}.stl
```

Example: `pentad_BOKA_gen1_20260320_234100.stl`

## Requirements

- Blender 3.0+ (flatpak or standard installation)
- Python 3.10+

## The Gielis Superformula

```
r(theta) = ( |cos(m*theta/4)|^n2 + |sin(m*theta/4)|^n3 ) ^ (-1/n1)
```

Parameters:
- m = symmetry (number of "arms")
- n1 = roundness (low = angular, high = rounded)
- n2, n3 = curvature

## References

Gielis, J. (2003). A generic geometric transformation that unifies a wide range
of natural and abstract shapes. American Journal of Botany, 90(3), 333-338.

## License

MIT
