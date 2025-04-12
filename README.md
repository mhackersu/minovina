# Minovina

Prayer room app featuring prayer list, live chat, live audio and video streaming.

## Domain Modeling

- Many churches, many believers, many prayers.
- Prayers can be marked anonymous, but must be created by a registered account.
- Members can be orphans, can be fostered, and can be adopted.
- Members can sponsor org accounts.
- Org accounts can be a physical church body or an online prayer meeting location.
- Org accounts can be associated with many Members; Members can change org affiliation but are only allowed one affiliation at a time.
- Org accounts can be be sponsored by any user but must be confirmed by the previous sponsor.
- Online prayer rooms can be hosted by any member.
- Any member can join a prayer room; Joins must be confirmed by event host.
- If member is affiliated with a sister church of the host, this will be displayed on the ask to join dialouge.
- Virtual events will be catalogued and listed in the host account page.
