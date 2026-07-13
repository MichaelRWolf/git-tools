# The "Clone and Just Work" Challenge

## Background

Jay Bazuzi recently suggested that **every software project should adopt a universal norm:**

> For every source repo in the world, you should be able to clone it onto a clean machine, run a "build and test" script at the root, and it should just work.

**Original Source:**  
Bazuzi, J. (2026). For every source repo in the world, I should... [Status update]. LinkedIn. Retrieved from https://www.linkedin.com/posts/jaybazuzi_for-every-source-repo-in-the-world-i-should-share-7479569344025292800-dfc8/

I turned this into a challenge for my own repositories and ran an audit across my 24 most recently modified repos. Here are my results.

## My Results

**Status: ❌ FAILING (8% pass rate)**

| Metric | Count | Status |
|--------|-------|--------|
| Repos with NO build/test infrastructure | 20 | 83% ❌ |
| Repos with test infrastructure | 4 | 17% ⚠️ |
| Repos where tests pass out-of-the-box | 2 | 8% ✅ |
| Repos where tests fail | 2 | 8% ❌ |

### The Good (2 repos) ✅
- **Portable_Profile** — 24 BATS tests passing
- **RV_2003_Dutchman** — 9 pytest tests passing

### The Bad (2 repos) ❌
- **augmented-coding-patterns** — Missing npm dependencies (jest not found)
- **shortcuts** — Default npm test stub, no real tests

### The Ugly (20 repos) 🔴
No build/test infrastructure at all, mostly documentation and configuration repos.

---

## Want to Accept the Challenge?

I'm providing a **ready-to-use prompt** below that you can give to Claude Code to audit your own repo collection. Run it, share your results, and let's raise the bar on "clone and just work" across the software development community.

### How to Use

1. **Navigate to your repos directory** (wherever you keep your cloned projects)
2. **Copy the prompt below** into Claude Code's chat
3. **Run it** and wait for results
4. **Share your results** — especially if you find gaps like I did!

---

## The Prompt

Copy and paste everything below into Claude Code:

```
For every repo in this directory, I want to test Jay Bazuzi's LinkedIn challenge -- 
For every source repo in the world, I should be able to clone it onto a clean machine, 
run the "build and test" script at the root, and it should just work.

I am proposing this as a universal norm that all software projects should adopt. 
Please help me confirm how well I am doing. For every repo that's been modified in the 
past 30 days in this directory, let's skip the clone step and assume that the current 
ones are good enough (because they all have fresh pulls -- an assumption, I know). 

Go to that repo, check if there is a 'build and test' or just 'build' or just 'test'. 
Mark that in a grid. Then run them to see if they pass. After each repo, update 
build_and_test_matrix.md in the current directory to have: 

- github origin URL
- has build (script/action exists? yes/no)
- has test (script/action exists? yes/no)
- has build_and_test (script/action exists? yes/no)
- build result (did it pass?)
- test result (did it pass?)
- build_and_test result (did it pass?)

Also create a detailed audit report (BUILD_TEST_AUDIT.md) that:
1. Summarizes overall statistics
2. Lists repos with passing tests
3. Lists repos with failing tests or missing setup
4. Lists repos with no infrastructure
5. Provides recommendations for improvement
```

---

## Sharing Your Results

Once you run the audit:

1. **Take a screenshot** of your results matrix or paste the output
2. **Share on social media** with:
   - Your pass/fail stats
   - How many repos have build/test infrastructure
   - A link back to this challenge
   - The hashtag **#CloneAndJustWorks** (let's make it a thing!)

3. **Add a comment** if you found interesting patterns:
   - "We're at 50% — here's how we're fixing it"
   - "All our production repos have tests; docs repos don't"
   - "This prompted us to add build/test to X repos"

---

## What We're Measuring

For each repo, we're checking:

- **Has Build** — Does a `make build` / `npm run build` / `build.sh` exist?
- **Has Test** — Does a `make test` / `npm test` / `test.sh` exist?
- **Has Build+Test** — A combined target that does both?
- **Passes** — Does it actually run without errors on a fresh clone?

---

## Why This Matters

Jay's suggestion is about **reducing friction**. When someone:
- Clones your repo
- Wants to verify it's working
- Needs to understand build/test conventions

They shouldn't have to read docs or hunt for Makefiles. The convention should be:
```bash
git clone <repo>
cd <repo>
make test       # or: npm test, ./test.sh, etc.
```

And it should **just work**.

---

## Next Steps

1. **Run the prompt** on your repo collection
2. **Share your results** 
3. **Fix the gaps** in your repos (we all have them!)
4. **Check back in 30 days** to see if you've improved

Looking forward to seeing your results! 🚀

---

**Created:** 2026-07-12 by Michael Wolf  
**Challenge inspired by:** Jay Bazuzi's suggestion on standardizing build/test workflows  
**Hashtag:** #CloneAndJustWorks
