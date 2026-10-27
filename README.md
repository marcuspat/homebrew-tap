# marcuspat/homebrew-tap

Homebrew tap for the marcuspat / adventurewave-labs CLI fleet — 10 formulae.

## How to use

```bash
brew install marcuspat/tap/<name>
```

| Formula | Tool | Source |
|---|---|---|
| `codescope` | Single-binary code intelligence for AI coding agents (MCP/CLI/JSON) | Prebuilt release binaries (fast, no compile) |
| `sentinel` | Safe agentic system administration: policy-gated terminal UI and CLI | Git tag v0.2.1 (compiles on install) |
| `turbo-flow-wizard` | Interactive CLAUDE.md setup wizard | Single script |
| `netrain` | Matrix-style network packet monitor with threat detection | crates.io 0.2.10 |
| `secretscan` | Rust secret scanner CLI (50 patterns, entropy, obfuscation) | crates.io 0.2.5 |
| `cargocrypt` | Zero-config file encryption for Rust projects | crates.io 0.3.0 |
| `k8s-netinspect` | Kubernetes CNI / pod connectivity inspection | crates.io 0.2.1 |
| `file-hasher` | SHA256/SHA1/MD5 file hashing with verify + streaming | crates.io 0.1.2 |
| `rustops` | AIOps toolkit: anomaly detection, alert correlation | crates.io 0.1.2 |
| `loopgen` | Agentic loop runner for Claude Code (LOOP_STATUS contract) | crates.io 0.3.0 |

Source-built formulae compile Rust on install (~2–4 min); the `rust` toolchain is pulled automatically as a build dependency. `codescope` ships prebuilt static binaries from its [release page](https://github.com/adventurewave-labs/codescope/releases) and installs instantly.

Every sha256 here is the authoritative checksum from crates.io, the release's signed sidecar, or the pinned tag tarball. Version bumps = new URL + new sha256.
