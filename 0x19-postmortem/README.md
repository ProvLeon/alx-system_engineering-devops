# Postmortem: The Great Emoji Outage 🌐🔌

## Issue Summary
**Duration:** From March 1, 2024, 10:00 AM UTC to March 2, 2024, 2:00 AM UTC.
**Impact:**
- **Service Affected:** Our popular emoji-sharing platform, "EmojifyMe."
- **User Experience:** Users experienced a complete lack of emojis across all channels.
- **Affected Users:** Approximately 80% of our active users were affected.

## Timeline
**Issue Detected:**
- **Time:** March 1, 2024, 10:00 AM UTC.
- **Detection Method:** A surge in customer complaints via email and social media.

**Actions Taken:**
- **Investigation:** Our team initially suspected a database issue due to the sudden disappearance of emojis. We checked database connections, indexes, and query performance. Investigated recent code deployments for any unintended changes.
- **Misleading Paths:** We spent hours optimizing database queries, assuming it was a performance issue. Also explored potential CDN misconfigurations.
- **Escalation:** Escalated to the backend engineering team and the DevOps lead.

## Resolution
**Root Cause:** The emoji service relied on an external API for fetching emojis. The API provider had silently deprecated our access token.
**Fix:** Updated our API token with the new one provided by the emoji API. Implemented better error handling to prevent silent failures.

## Root Cause and Resolution
**Root Cause:** The root cause of the Great Emoji Outage was the silent deprecation of our external API access token. The emoji service relied on this token to fetch emojis, and when it expired, our system failed to retrieve emojis, leaving users with empty smiley faces.
**Resolution:** To resolve the issue, we obtained a new API token from the emoji provider, updated our service to use the new token, and implemented robust error handling to detect and handle token expiration gracefully.

## Corrective and Preventative Measures
**Improvements:**
- **Monitoring:** Set up proactive monitoring for API tokens and external dependencies. Regularly validate third-party integrations.
- **Documentation:** Maintain an up-to-date inventory of external services and their dependencies. Document API token renewal procedures.
- **Testing:** Enhance testing scenarios to include token expiration scenarios.
- **Alerts:** Configure alerts for sudden drops in emoji availability.

**Tasks:**
- **TODO:** Patch Nginx Server: Update Nginx configurations to handle token expiration gracefully.
- **TODO:** Add Monitoring on Server Memory: Set up memory monitoring to catch resource exhaustion early.

## Conclusion
The Great Emoji Outage taught us valuable lessons about external dependencies and the importance of robust monitoring. We've now added emojis back to our users' lives, and they're sending us 🙌 and ❤️ in gratitude. Let's keep those emojis flowing! 🚀🌊

For more insights and a detailed breakdown of the incident, refer to the comprehensive blog post [here](https://medium.com/@leokantah/postmortem-the-great-emoji-outage-f9bb80ac626b).
