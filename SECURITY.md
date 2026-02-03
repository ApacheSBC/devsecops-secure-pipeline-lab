# Security Policy

## Overview (what this repo scans)
This repository is a DevSecOps learning project that implements security checks inside a GitHub Actions CI pipeline.

The pipeline focuses on:
- **IaC scanning** (Terraform) using Trivy
- **Filesystem vulnerability scanning** (repository contents) using Trivy
- **SBOM (Software Bill of Materials)** generation in SPDX format

These checks are designed to simulate real-world DevSecOps practices and highlight security risks early in the SDLC.

---

## Reporting vulnerabilities
If you discover a security issue in this project, please report it responsibly by:
1. Creating a GitHub issue with the label `security`, **or**
2. Contacting the repository owner directly

Please include:
- A clear description of the vulnerability
- Steps to reproduce
- Impact (what could happen if exploited)
- Suggested fix (if known)

---

## Severity policy (HIGH / CRITICAL)
This repo uses a **risk-based approach** to vulnerability management.

### Policy
- **LOW / MEDIUM**
  - Findings are logged and reviewed
  - Typically do not fail the build during learning/development phases

- **HIGH / CRITICAL**
  - Treated as a priority security issue
  - Should be fixed as soon as possible
  - May be configured to fail CI in future stages as the pipeline matures

This severity threshold reflects common industry practices where high-risk issues should block production changes.

---

## False positives handling
Security scanners may occasionally raise false positives or acceptable-risk findings.

If a finding is believed to be:
- a false positive
- not exploitable in this context
- acceptable risk for this learning project

…it should be handled via documentation and justification.

Where appropriate, this repo may use:
- `.trivyignore` entries
- documented notes in the runbook / README

All ignored findings should be:
- specific
- justified
- reviewed periodically

