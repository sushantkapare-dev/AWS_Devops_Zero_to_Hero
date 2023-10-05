## what are your branching strategy?
GitFlow is a branching model that helps organize and manage code changes in a systematic way. It defines a set of branch types and rules for how they should be used. Here are the main branches and their purposes in the GitFlow branching strategy:

1. **Main Branch (or Master Branch):**
   - This branch represents the production-ready code.
   - It should always contain stable and release-ready code.
   - Developers should not directly commit to this branch.

2. **Develop Branch:**
   - The develop branch is where new features and changes are integrated.
   - Feature branches are merged into this branch after testing and code review.
   - Continuous Integration (CI) and Continuous Deployment (CD) pipelines are often triggered for this branch.

3. **Feature Branches:**
   - Feature branches are created for new features, bug fixes, or other tasks.
   - Each feature branch is branched off from the develop branch.
   - Developers work on their features independently in their feature branches.
   - Once the feature is complete and tested, it is merged back into the develop branch.

4. **Release Branches:**
   - A release branch is created when the development branch is considered stable and ready for release.
   - No new features are added to the release branch; only bug fixes and minor improvements are allowed.
   - After thorough testing, the release branch is merged into both the main branch (for production) and the develop branch (to keep it up to date).

5. **Hotfix Branches:**
   - Hotfix branches are used to address critical issues in the production code.
   - They are created from the main branch directly to fix urgent problems.
   - Once the hotfix is tested and validated, it is merged into both the main branch and the develop branch to ensure the fixes are included in future releases.

The GitFlow branching strategy provides a structured way to manage code changes, ensuring that development work is organized and that the main and develop branches remain stable and clean. It also promotes collaboration, code reviews, and testing at various stages of development.

## How often do you release your product?

## what are your role and responsibility in project?

## As a devops engineer what do you do on day-to-day basis?

## How do you handle bug at production level?

## Explain the CI-CD in your project?

## How do you support/collabrated with various team?

