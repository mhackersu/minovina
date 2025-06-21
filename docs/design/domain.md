# Domain Driven Design

Each object is an API endpoint that is publically accessible for LLM lookup, enabling screen-less transactions.

Atlast.City is community toolbox.

- Service Directory
    - Plumbers
    - Photographers
    - Electricians
    - Wedding Planners
    - Florists
    - Hair Stylists
    - Grocery Shopping
    - Nanny
    - Valet
    - Private Chef Services
    - Meal Prep Services
    - Workout Services
    - Personal Tutor Services
    - Contractors (Home Repair)
    - Chefs
    - Dog Sitter
    - Cat Sitter

- Community Action
    - Volunteering & Neighborhood Organization & Events

Each user is assigned an Atlast.City address, which includes a public profile to list their professional services offered, reviews, and a quote builder quote form that provides an instant quote online. Atlast.City will allow payments for verified profile listing via Stripe.

Beyond Stripe...

Options to pay a retainer and contract sign flow which should cover the Atlast.City transaction fee, and holds the remainder of the fee until the provider has preformed the serivce, and the buyer has confirmed. There is UI flow to confirm this service delivered. Initial deposit is sent to the vendor along with the remainder of each payment (one transaction fee per payment) which are pre-authorized on a monthly payment plan with the buyer. The entire quote process is facilitated by Atlast.City. The monthly account offers benifits such as placement on regional pages. Radius of regional pages is determined by density of services offered.

Atlast.City is envisioned entirely around the premise of an online quote flow, then the deposit flow, which funds the Atlast.City transaction fee, along with online contract signing flow and multi-payment checkout options, then to reciept and review flow all in an API-first design with priority to LLM consumers, and simple UIs.