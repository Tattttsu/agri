Geocoder.configure(
  lookup: :google,
  always_raise: [
    Geocoder::OverQueryLimitError,
    Geocoder::RequestDenied,
    Geocoder::InvalidRequest,
    Geocoder::InvalidApiKey
  ],
  api_key: Rails.application.credentials.GOOGLE_MAP_API_KEY,
  use_https: true
)
