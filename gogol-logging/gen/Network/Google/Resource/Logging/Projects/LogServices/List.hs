{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Logging.Projects.LogServices.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists the log services that have log entries in this project.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Google Cloud Logging API Reference> for @LoggingProjectsLogServicesList@.
module Network.Google.Resource.Logging.Projects.LogServices.List
    (
    -- * REST Resource
      ProjectsLogServicesListResource

    -- * Creating a Request
    , projectsLogServicesList'
    , ProjectsLogServicesList'

    -- * Request Lenses
    , plslLog
    , plslXgafv
    , plslQuotaUser
    , plslPrettyPrint
    , plslUploadProtocol
    , plslPp
    , plslAccessToken
    , plslUploadType
    , plslBearerToken
    , plslKey
    , plslPageToken
    , plslOauthToken
    , plslProjectsId
    , plslPageSize
    , plslFields
    , plslCallback
    , plslAlt
    ) where

import           Network.Google.Logging.Types
import           Network.Google.Prelude

-- | A resource alias for @LoggingProjectsLogServicesList@ which the
-- 'ProjectsLogServicesList'' request conforms to.
type ProjectsLogServicesListResource =
     "v1beta3" :>
       "projects" :>
         Capture "projectsId" Text :>
           "logServices" :>
             QueryParam "log" Text :>
               QueryParam "$.xgafv" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "pp" Bool :>
                         QueryParam "access_token" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParam "bearer_token" Text :>
                               QueryParam "key" Text :>
                                 QueryParam "pageToken" Text :>
                                   QueryParam "oauth_token" Text :>
                                     QueryParam "pageSize" Int32 :>
                                       QueryParam "fields" Text :>
                                         QueryParam "callback" Text :>
                                           QueryParam "alt" Text :>
                                             Get '[JSON] ListLogServicesResponse

-- | Lists the log services that have log entries in this project.
--
-- /See:/ 'projectsLogServicesList'' smart constructor.
data ProjectsLogServicesList' = ProjectsLogServicesList'
    { _plslLog            :: !(Maybe Text)
    , _plslXgafv          :: !(Maybe Text)
    , _plslQuotaUser      :: !(Maybe Text)
    , _plslPrettyPrint    :: !Bool
    , _plslUploadProtocol :: !(Maybe Text)
    , _plslPp             :: !Bool
    , _plslAccessToken    :: !(Maybe Text)
    , _plslUploadType     :: !(Maybe Text)
    , _plslBearerToken    :: !(Maybe Text)
    , _plslKey            :: !(Maybe Text)
    , _plslPageToken      :: !(Maybe Text)
    , _plslOauthToken     :: !(Maybe Text)
    , _plslProjectsId     :: !Text
    , _plslPageSize       :: !(Maybe Int32)
    , _plslFields         :: !(Maybe Text)
    , _plslCallback       :: !(Maybe Text)
    , _plslAlt            :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsLogServicesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plslLog'
--
-- * 'plslXgafv'
--
-- * 'plslQuotaUser'
--
-- * 'plslPrettyPrint'
--
-- * 'plslUploadProtocol'
--
-- * 'plslPp'
--
-- * 'plslAccessToken'
--
-- * 'plslUploadType'
--
-- * 'plslBearerToken'
--
-- * 'plslKey'
--
-- * 'plslPageToken'
--
-- * 'plslOauthToken'
--
-- * 'plslProjectsId'
--
-- * 'plslPageSize'
--
-- * 'plslFields'
--
-- * 'plslCallback'
--
-- * 'plslAlt'
projectsLogServicesList'
    :: Text -- ^ 'projectsId'
    -> ProjectsLogServicesList'
projectsLogServicesList' pPlslProjectsId_ =
    ProjectsLogServicesList'
    { _plslLog = Nothing
    , _plslXgafv = Nothing
    , _plslQuotaUser = Nothing
    , _plslPrettyPrint = True
    , _plslUploadProtocol = Nothing
    , _plslPp = True
    , _plslAccessToken = Nothing
    , _plslUploadType = Nothing
    , _plslBearerToken = Nothing
    , _plslKey = Nothing
    , _plslPageToken = Nothing
    , _plslOauthToken = Nothing
    , _plslProjectsId = pPlslProjectsId_
    , _plslPageSize = Nothing
    , _plslFields = Nothing
    , _plslCallback = Nothing
    , _plslAlt = "json"
    }

-- | If empty, all log services contributing log entries to the project are
-- listed. Otherwise, this field must be the resource name of a log, such
-- as \`\"projects\/my-project\/appengine.googleapis.com%2Frequest_log\"\`,
-- and then the only services listed are those associated with entries in
-- the log. A service is associated with an entry if its name is in the
-- entry\'s \`LogEntryMetadata.serviceName\` field.
plslLog :: Lens' ProjectsLogServicesList' (Maybe Text)
plslLog = lens _plslLog (\ s a -> s{_plslLog = a})

-- | V1 error format.
plslXgafv :: Lens' ProjectsLogServicesList' (Maybe Text)
plslXgafv
  = lens _plslXgafv (\ s a -> s{_plslXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
plslQuotaUser :: Lens' ProjectsLogServicesList' (Maybe Text)
plslQuotaUser
  = lens _plslQuotaUser
      (\ s a -> s{_plslQuotaUser = a})

-- | Returns response with indentations and line breaks.
plslPrettyPrint :: Lens' ProjectsLogServicesList' Bool
plslPrettyPrint
  = lens _plslPrettyPrint
      (\ s a -> s{_plslPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plslUploadProtocol :: Lens' ProjectsLogServicesList' (Maybe Text)
plslUploadProtocol
  = lens _plslUploadProtocol
      (\ s a -> s{_plslUploadProtocol = a})

-- | Pretty-print response.
plslPp :: Lens' ProjectsLogServicesList' Bool
plslPp = lens _plslPp (\ s a -> s{_plslPp = a})

-- | OAuth access token.
plslAccessToken :: Lens' ProjectsLogServicesList' (Maybe Text)
plslAccessToken
  = lens _plslAccessToken
      (\ s a -> s{_plslAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plslUploadType :: Lens' ProjectsLogServicesList' (Maybe Text)
plslUploadType
  = lens _plslUploadType
      (\ s a -> s{_plslUploadType = a})

-- | OAuth bearer token.
plslBearerToken :: Lens' ProjectsLogServicesList' (Maybe Text)
plslBearerToken
  = lens _plslBearerToken
      (\ s a -> s{_plslBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
plslKey :: Lens' ProjectsLogServicesList' (Maybe Text)
plslKey = lens _plslKey (\ s a -> s{_plslKey = a})

-- | An opaque token, returned as \`nextPageToken\` by a prior
-- \`ListLogServices\` operation. If \`pageToken\` is supplied, then the
-- other fields of this request are ignored, and instead the previous
-- \`ListLogServices\` operation is continued.
plslPageToken :: Lens' ProjectsLogServicesList' (Maybe Text)
plslPageToken
  = lens _plslPageToken
      (\ s a -> s{_plslPageToken = a})

-- | OAuth 2.0 token for the current user.
plslOauthToken :: Lens' ProjectsLogServicesList' (Maybe Text)
plslOauthToken
  = lens _plslOauthToken
      (\ s a -> s{_plslOauthToken = a})

-- | Part of \`projectName\`. The resource name of the project whose services
-- are to be listed.
plslProjectsId :: Lens' ProjectsLogServicesList' Text
plslProjectsId
  = lens _plslProjectsId
      (\ s a -> s{_plslProjectsId = a})

-- | The maximum number of \`LogService\` objects to return in one operation.
plslPageSize :: Lens' ProjectsLogServicesList' (Maybe Int32)
plslPageSize
  = lens _plslPageSize (\ s a -> s{_plslPageSize = a})

-- | Selector specifying which fields to include in a partial response.
plslFields :: Lens' ProjectsLogServicesList' (Maybe Text)
plslFields
  = lens _plslFields (\ s a -> s{_plslFields = a})

-- | JSONP
plslCallback :: Lens' ProjectsLogServicesList' (Maybe Text)
plslCallback
  = lens _plslCallback (\ s a -> s{_plslCallback = a})

-- | Data format for response.
plslAlt :: Lens' ProjectsLogServicesList' Text
plslAlt = lens _plslAlt (\ s a -> s{_plslAlt = a})

instance GoogleRequest ProjectsLogServicesList' where
        type Rs ProjectsLogServicesList' =
             ListLogServicesResponse
        request = requestWithRoute defReq loggingURL
        requestWithRoute r u ProjectsLogServicesList'{..}
          = go _plslLog _plslXgafv _plslQuotaUser
              (Just _plslPrettyPrint)
              _plslUploadProtocol
              (Just _plslPp)
              _plslAccessToken
              _plslUploadType
              _plslBearerToken
              _plslKey
              _plslPageToken
              _plslOauthToken
              _plslProjectsId
              _plslPageSize
              _plslFields
              _plslCallback
              (Just _plslAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ProjectsLogServicesListResource)
                      r
                      u