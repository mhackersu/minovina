import Stripe from "stripe";
export const stripe = Stripe(Deno.env.get("STRIPE_SK")!, {
  httpClient: Stripe.createFetchHttpClient(),
  apiVersion: "2022-08-01",
});

const cryptoProvider = Stripe.createSubtleCryptoProvider();

export const processWebhookRequest = async (req: Request) => {
  const signature = req.headers.get("Stripe-Signature");
  const body = await req.text();
  console.log(req);
  return await stripe.webhooks.constructEventAsync(
    body,
    signature!,
    Deno.env.get("STRIPE_WEBHOOK_SIGNING_SECRET")!,
    undefined,
    cryptoProvider,
  );
};
