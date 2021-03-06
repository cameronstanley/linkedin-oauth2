module LinkedIn
  # Share APIs
  #
  # @see https://docs.microsoft.com/en-us/linkedin/consumer/integrations/self-serve/share-on-linkedin
  #
  class ShareAndSocialStream < APIResource
    # Create a text share for the authenticated user
    #
    # Permissions: w_member_social
    #
    # @see https://docs.microsoft.com/en-us/linkedin/consumer/integrations/self-serve/share-on-linkedin#create-a-text-share
    #
    # @return [void]
    def add_text_share(authorId, text)
      path = "/ugcPosts"
      params = {
        "author" => authorId,
        "lifecycleState" => "published",
        "specificContent" => {
          "com.linkedin.ugc.ShareContent" => {
            "shareCommentary" => {
              "text" => text
            },
            "shareMediaCategory" => "NONE"
          }
        },
        "visibility" => {
          "com.linkedin.ugc.MemberNetworkVisibility" => "PUBLIC"
        }
      }
      post(path, params, "Content-Type" => "application/json")
    end
  end
end
