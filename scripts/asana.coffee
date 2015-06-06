<!DOCTYPE html>
<!-- saved from url=(0076)https://github.com/github/hubot-scripts/blob/master/src/scripts/asana.coffee -->
<html lang="en" class=" is-copy-enabled" hola_ext_inject="ready"><head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# object: http://ogp.me/ns/object# article: http://ogp.me/ns/article# profile: http://ogp.me/ns/profile#"><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Content-Language" content="en">
    
    
    <title>hubot-scripts/asana.coffee at master · github/hubot-scripts</title>
    <link rel="search" type="application/opensearchdescription+xml" href="https://github.com/opensearch.xml" title="GitHub">
    <link rel="fluid-icon" href="https://github.com/fluidicon.png" title="GitHub">
    <link rel="apple-touch-icon" sizes="57x57" href="https://github.com/apple-touch-icon-114.png">
    <link rel="apple-touch-icon" sizes="114x114" href="https://github.com/apple-touch-icon-114.png">
    <link rel="apple-touch-icon" sizes="72x72" href="https://github.com/apple-touch-icon-144.png">
    <link rel="apple-touch-icon" sizes="144x144" href="https://github.com/apple-touch-icon-144.png">
    <meta property="fb:app_id" content="1401488693436528">

      <meta content="@github" name="twitter:site"><meta content="summary" name="twitter:card"><meta content="github/hubot-scripts" name="twitter:title"><meta content="DEPRECATED, see https://github.com/github/hubot-scripts/issues/1113 for details - optional scripts for hubot, opt in via hubot-scripts.json" name="twitter:description"><meta content="https://avatars1.githubusercontent.com/u/9919?v=3&amp;s=400" name="twitter:image:src">
      <meta content="GitHub" property="og:site_name"><meta content="object" property="og:type"><meta content="https://avatars1.githubusercontent.com/u/9919?v=3&amp;s=400" property="og:image"><meta content="github/hubot-scripts" property="og:title"><meta content="https://github.com/github/hubot-scripts" property="og:url"><meta content="DEPRECATED, see https://github.com/github/hubot-scripts/issues/1113 for details - optional scripts for hubot, opt in via hubot-scripts.json" property="og:description">
      <meta name="browser-stats-url" content="https://api.github.com/_private/browser/stats">
    <meta name="browser-errors-url" content="https://api.github.com/_private/browser/errors">
    <link rel="assets" href="https://assets-cdn.github.com/">
    <link rel="web-socket" href="wss://live.github.com/_sockets/ODg0MDAyNDo3NTcwMTQ5OTNlNjgxODVjNzk4MjNmNDdlYWY1YzlkMTo1MTU0ZjI1ZGVkMzIxZDgwZmMyZTg3OTc1YjUxNTY0NGQ1YTQzZjMxNzQ2ODE4OTZkNjY0NDg0MWNkZTc0NGE1--751aca905dbd485820cb477a2ea72a1142d47243">
    <meta name="pjax-timeout" content="1000">
    <link rel="sudo-modal" href="https://github.com/sessions/sudo_modal">

    <meta name="msapplication-TileImage" content="/windows-tile.png">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="selected-link" value="repo_source" data-pjax-transient="">
      <meta name="google-analytics" content="UA-3769691-2">

    <meta content="collector.githubapp.com" name="octolytics-host"><meta content="collector-cdn.github.com" name="octolytics-script-host"><meta content="github" name="octolytics-app-id"><meta content="7225B890:6412:3992788:5572A038" name="octolytics-dimension-request_id"><meta content="8840024" name="octolytics-actor-id"><meta content="dylanh724" name="octolytics-actor-login"><meta content="9bd8e5b1da9026caf0fee6b80c1d5930cbd172c65f0b9f6c912dee34d2f9406e" name="octolytics-actor-hash">
    
    <meta content="Rails, view, blob#show" name="analytics-event">
    <meta class="js-ga-set" name="dimension1" content="Logged In">
    <meta class="js-ga-set" name="dimension2" content="Header v3">
    <meta name="is-dotcom" content="true">
      <meta name="hostname" content="github.com">
    <meta name="user-login" content="dylanh724">

    
    <link rel="icon" type="image/x-icon" href="https://assets-cdn.github.com/favicon.ico">


    <meta content="authenticity_token" name="csrf-param">
<meta content="OJnsYgYAp1B5We0yjwvJj51jZT2fxvsV2uUXXFNV1vvy8hlbspRZRrkpkqXpPPelYSczEJ0kgYWB9mvZChYAcw==" name="csrf-token">

    <link crossorigin="anonymous" href="https://assets-cdn.github.com/assets/github/index-6967b378b26829cc5a2ea2ad4209ff0af50f2a65057962219dc9dcf8942683f0.css" media="all" rel="stylesheet">
    <link crossorigin="anonymous" href="https://assets-cdn.github.com/assets/github2/index-73bfe123ff406f4bf8959a28667410beaac1485e71c92d4725a3d7afc45fc4c5.css" media="all" rel="stylesheet">
    
    


    <meta http-equiv="x-pjax-version" content="30cf7eb6838f7e628d093c8366abfa24">

      
  <meta name="description" content="DEPRECATED, see https://github.com/github/hubot-scripts/issues/1113 for details - optional scripts for hubot, opt in via hubot-scripts.json">
  <meta name="go-import" content="github.com/github/hubot-scripts git https://github.com/github/hubot-scripts.git">

  <meta content="9919" name="octolytics-dimension-user_id"><meta content="github" name="octolytics-dimension-user_login"><meta content="2346623" name="octolytics-dimension-repository_id"><meta content="github/hubot-scripts" name="octolytics-dimension-repository_nwo"><meta content="true" name="octolytics-dimension-repository_public"><meta content="false" name="octolytics-dimension-repository_is_fork"><meta content="2346623" name="octolytics-dimension-repository_network_root_id"><meta content="github/hubot-scripts" name="octolytics-dimension-repository_network_root_nwo">
  <link href="https://github.com/github/hubot-scripts/commits/master.atom" rel="alternate" title="Recent Commits to hubot-scripts:master" type="application/atom+xml">

  <script type="text/javascript" async="" src="./asana_files/api.js"></script></head>


  <body class="logged_in  env-production windows vis-public page-blob" hola-ext-player="1">
    <a href="https://github.com/github/hubot-scripts/blob/master/src/scripts/asana.coffee#start-of-content" tabindex="1" class="accessibility-aid js-skip-to-content">Skip to content</a>
    <div class="wrapper">
      
      
      


        <div class="header header-logged-in true" role="banner">
  <div class="container clearfix">

    <a class="header-logo-invertocat" href="https://github.com/" data-hotkey="g d" aria-label="Homepage" data-ga-click="Header, go to dashboard, icon:logo">
  <span class="mega-octicon octicon-mark-github"></span>
</a>


      <div class="site-search repo-scope js-site-search" role="search">
          <form accept-charset="UTF-8" action="https://github.com/github/hubot-scripts/search" class="js-site-search-form" data-global-search-url="/search" data-repo-search-url="/github/hubot-scripts/search" method="get"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="✓"></div>
  <label class="js-chromeless-input-container form-control">
    <div class="scope-badge">This repository</div>
    <input type="text" class="js-site-search-focus js-site-search-field is-clearable chromeless-input" data-hotkey="s" name="q" placeholder="Search" data-global-scope-placeholder="Search GitHub" data-repo-scope-placeholder="Search" tabindex="1" autocapitalize="off">
  </label>
</form>
      </div>

      <ul class="header-nav left" role="navigation">
          <li class="header-nav-item explore">
            <a class="header-nav-link" href="https://github.com/explore" data-ga-click="Header, go to explore, text:explore">Explore</a>
          </li>
            <li class="header-nav-item">
              <a class="header-nav-link" href="https://gist.github.com/" data-ga-click="Header, go to gist, text:gist">Gist</a>
            </li>
            <li class="header-nav-item">
              <a class="header-nav-link" href="https://github.com/blog" data-ga-click="Header, go to blog, text:blog">Blog</a>
            </li>
          <li class="header-nav-item">
            <a class="header-nav-link" href="https://help.github.com/" data-ga-click="Header, go to help, text:help">Help</a>
          </li>
      </ul>

      
<ul class="header-nav user-nav right" id="user-links">
  <li class="header-nav-item dropdown js-menu-container">
    <a class="header-nav-link name" href="https://github.com/dylanh724" data-ga-click="Header, go to profile, text:username">
      <img alt="@dylanh724" class="avatar" height="20" src="./asana_files/8840024" width="20">
      <span class="css-truncate">
        <span class="css-truncate-target">dylanh724</span>
      </span>
    </a>
  </li>

  <li class="header-nav-item dropdown js-menu-container">
    <a class="header-nav-link js-menu-target tooltipped tooltipped-s" href="https://github.com/new" aria-label="Create new..." data-ga-click="Header, create new, icon:add">
      <span class="octicon octicon-plus"></span>
      <span class="dropdown-caret"></span>
    </a>

    <div class="dropdown-menu-content js-menu-content">
      <ul class="dropdown-menu">
        
<li>
  <a href="https://github.com/new" data-ga-click="Header, create new repository, icon:repo"><span class="octicon octicon-repo"></span> New repository</a>
</li>
<li>
  <a href="https://github.com/organizations/new" data-ga-click="Header, create new organization, icon:organization"><span class="octicon octicon-organization"></span> New organization</a>
</li>


  <li class="dropdown-divider"></li>
  <li class="dropdown-header">
    <span title="github/hubot-scripts">This repository</span>
  </li>
    <li>
      <a href="https://github.com/github/hubot-scripts/issues/new" data-ga-click="Header, create new issue, icon:issue"><span class="octicon octicon-issue-opened"></span> New issue</a>
    </li>

      </ul>
    </div>
  </li>

  <li class="header-nav-item">
      <span class="js-socket-channel js-updatable-content" data-channel="notification-changed:dylanh724" data-url="/notifications/header">
      <a href="https://github.com/notifications" aria-label="You have unread notifications" class="header-nav-link notification-indicator tooltipped tooltipped-s" data-ga-click="Header, go to notifications, icon:unread" data-hotkey="g n">
          <span class="mail-status unread"></span>
          <span class="octicon octicon-inbox"></span>
</a>  </span>

  </li>

  <li class="header-nav-item">
    <a class="header-nav-link tooltipped tooltipped-s" href="https://github.com/settings/profile" id="account_settings" aria-label="Settings" data-ga-click="Header, go to settings, icon:settings">
      <span class="octicon octicon-gear"></span>
    </a>
  </li>

  <li class="header-nav-item">
    <form accept-charset="UTF-8" action="https://github.com/logout" class="logout-form" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="✓"><input name="authenticity_token" type="hidden" value="7HK6cAqV4WpnN/2vgUq6FKivfLrfg/mcQ+iKr6xm/etPPPgMHMYj2ZTS5Lp8t9eYhpbZtoZGzP37Hv1YOJLxSA=="></div>
      <button class="header-nav-link sign-out-button tooltipped tooltipped-s" aria-label="Sign out" data-ga-click="Header, sign out, icon:logout">
        <span class="octicon octicon-sign-out"></span>
      </button>
</form>  </li>

</ul>



    
  </div>
</div>

        

        


      <div id="start-of-content" class="accessibility-aid"></div>
          <div class="site" itemscope="" itemtype="http://schema.org/WebPage">
    <div id="js-flash-container">
      
    </div>
    <div class="pagehead repohead instapaper_ignore readability-menu">
      <div class="container">

        
<ul class="pagehead-actions">

  <li>
      <form accept-charset="UTF-8" action="https://github.com/notifications/subscribe" class="js-social-container" data-autosubmit="true" data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="✓"><input name="authenticity_token" type="hidden" value="4zbteDto1OPcRxd/M/F0HTWodK4YJ4JYqdwogX+yX22kP6f2IG4gT4380pAV06ftbvdGzhbDi8zQN4/TjgFMOw=="></div>    <input id="repository_id" name="repository_id" type="hidden" value="2346623">

      <div class="select-menu js-menu-container js-select-menu">
        <a href="https://github.com/github/hubot-scripts/subscription" class="btn btn-sm btn-with-count select-menu-button js-menu-target" role="button" tabindex="0" aria-haspopup="true" data-ga-click="Repository, click Watch settings, action:blob#show">
          <span class="js-select-button">
            <span class="octicon octicon-eye"></span>
            Watch
          </span>
        </a>
        <a class="social-count js-social-count" href="https://github.com/github/hubot-scripts/watchers">
          134
        </a>

        <div class="select-menu-modal-holder">
          <div class="select-menu-modal subscription-menu-modal js-menu-content" aria-hidden="true">
            <div class="select-menu-header">
              <span class="select-menu-title">Notifications</span>
              <span class="octicon octicon-x js-menu-close" role="button" aria-label="Close"></span>
            </div>

            <div class="select-menu-list js-navigation-container" role="menu">

              <div class="select-menu-item js-navigation-item selected" role="menuitem" tabindex="0">
                <span class="select-menu-item-icon octicon octicon-check"></span>
                <div class="select-menu-item-text">
                  <input checked="checked" id="do_included" name="do" type="radio" value="included">
                  <span class="select-menu-item-heading">Not watching</span>
                  <span class="description">Be notified when participating or @mentioned.</span>
                  <span class="js-select-button-text hidden-select-button-text">
                    <span class="octicon octicon-eye"></span>
                    Watch
                  </span>
                </div>
              </div>

              <div class="select-menu-item js-navigation-item " role="menuitem" tabindex="0">
                <span class="select-menu-item-icon octicon octicon octicon-check"></span>
                <div class="select-menu-item-text">
                  <input id="do_subscribed" name="do" type="radio" value="subscribed">
                  <span class="select-menu-item-heading">Watching</span>
                  <span class="description">Be notified of all conversations.</span>
                  <span class="js-select-button-text hidden-select-button-text">
                    <span class="octicon octicon-eye"></span>
                    Unwatch
                  </span>
                </div>
              </div>

              <div class="select-menu-item js-navigation-item " role="menuitem" tabindex="0">
                <span class="select-menu-item-icon octicon octicon-check"></span>
                <div class="select-menu-item-text">
                  <input id="do_ignore" name="do" type="radio" value="ignore">
                  <span class="select-menu-item-heading">Ignoring</span>
                  <span class="description">Never be notified.</span>
                  <span class="js-select-button-text hidden-select-button-text">
                    <span class="octicon octicon-mute"></span>
                    Stop ignoring
                  </span>
                </div>
              </div>

            </div>

          </div>
        </div>
      </div>
</form>
  </li>

  <li>
    
  <div class="js-toggler-container js-social-container starring-container ">

    <form accept-charset="UTF-8" action="https://github.com/github/hubot-scripts/unstar" class="js-toggler-form starred js-unstar-button" data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="✓"><input name="authenticity_token" type="hidden" value="WNpzdjzyWJEotyuq2XFes7Sb0treCxgsKiG9v+b5A60+wURta/aYqLltx0A9IUp3ErRMCj6uttcvOvMgh07YZg=="></div>
      <button class="btn btn-sm btn-with-count js-toggler-target" aria-label="Unstar this repository" title="Unstar github/hubot-scripts" data-ga-click="Repository, click unstar button, action:blob#show; text:Unstar">
        <span class="octicon octicon-star"></span>
        Unstar
      </button>
        <a class="social-count js-social-count" href="https://github.com/github/hubot-scripts/stargazers">
          2,746
        </a>
</form>
    <form accept-charset="UTF-8" action="https://github.com/github/hubot-scripts/star" class="js-toggler-form unstarred js-star-button" data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="✓"><input name="authenticity_token" type="hidden" value="l7SguLvr8yML0nnNyXd3gzG1jolJjaMZFpjIDN8GyRs8K2ZtcBigoP8ADGSX6Fe4exwfgK+rcG4f/HHj3WNZ+Q=="></div>
      <button class="btn btn-sm btn-with-count js-toggler-target" aria-label="Star this repository" title="Star github/hubot-scripts" data-ga-click="Repository, click star button, action:blob#show; text:Star">
        <span class="octicon octicon-star"></span>
        Star
      </button>
        <a class="social-count js-social-count" href="https://github.com/github/hubot-scripts/stargazers">
          2,746
        </a>
</form>  </div>

  </li>

        <li>
          <a href="https://github.com/github/hubot-scripts/blob/master/src/scripts/asana.coffee#fork-destination-box" class="btn btn-sm btn-with-count" title="Fork your own copy of github/hubot-scripts to your account" aria-label="Fork your own copy of github/hubot-scripts to your account" rel="facebox" data-ga-click="Repository, show fork modal, action:blob#show; text:Fork">
            <span class="octicon octicon-repo-forked"></span>
            Fork
          </a>
          <a href="https://github.com/github/hubot-scripts/network" class="social-count">1,738</a>

          <div id="fork-destination-box" style="display: none;">
            <h2 class="facebox-header">Where should we fork this repository?</h2>
            <include-fragment src="" class="js-fork-select-fragment fork-select-fragment" data-url="/github/hubot-scripts/fork?fragment=1">
              <img alt="Loading" height="64" src="./asana_files/octocat-spinner-128-338974454bb5c32803e82f601beb051d373744b024fe8742a76009700fd7e033.gif" width="64">
            </include-fragment>
          </div>
        </li>

</ul>

        <h1 itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb" class="entry-title public">
          <span class="mega-octicon octicon-repo"></span>
          <span class="author"><a href="https://github.com/github" class="url fn" itemprop="url" rel="author"><span itemprop="title">github</span></a></span><!--
       --><span class="path-divider">/</span><!--
       --><strong><a href="https://github.com/github/hubot-scripts" data-pjax="#js-repo-pjax-container">hubot-scripts</a></strong>

          <span class="page-context-loader">
            <img alt="" height="16" src="./asana_files/octocat-spinner-32-e513294efa576953719e4e2de888dd9cf929b7d62ed8d05f25e731d02452ab6c.gif" width="16">
          </span>

        </h1>
      </div><!-- /.container -->
    </div><!-- /.repohead -->

    <div class="container">
      <div class="repository-with-sidebar repo-container new-discussion-timeline">
        <div class="repository-sidebar clearfix">
            
<nav class="sunken-menu repo-nav js-repo-nav js-sidenav-container-pjax js-octicon-loaders" role="navigation" data-pjax="#js-repo-pjax-container" data-issue-count-url="/github/hubot-scripts/issues/counts">
  <ul class="sunken-menu-group">
    <li class="tooltipped tooltipped-w" aria-label="Code">
      <a href="https://github.com/github/hubot-scripts" aria-label="Code" class="selected js-selected-navigation-item sunken-menu-item" data-hotkey="g c" data-selected-links="repo_source repo_downloads repo_commits repo_releases repo_tags repo_branches /github/hubot-scripts">
        <span class="octicon octicon-code"></span> <span class="full-word">Code</span>
        <img alt="" class="mini-loader" height="16" src="./asana_files/octocat-spinner-32-e513294efa576953719e4e2de888dd9cf929b7d62ed8d05f25e731d02452ab6c.gif" width="16">
</a>    </li>

      <li class="tooltipped tooltipped-w" aria-label="Issues">
        <a href="https://github.com/github/hubot-scripts/issues" aria-label="Issues" class="js-selected-navigation-item sunken-menu-item" data-hotkey="g i" data-selected-links="repo_issues repo_labels repo_milestones /github/hubot-scripts/issues">
          <span class="octicon octicon-issue-opened"></span> <span class="full-word">Issues</span>
          <span class="js-issue-replace-counter"></span>
          <img alt="" class="mini-loader" height="16" src="./asana_files/octocat-spinner-32-e513294efa576953719e4e2de888dd9cf929b7d62ed8d05f25e731d02452ab6c.gif" width="16">
</a>      </li>

    <li class="tooltipped tooltipped-w" aria-label="Pull requests">
      <a href="https://github.com/github/hubot-scripts/pulls" aria-label="Pull requests" class="js-selected-navigation-item sunken-menu-item" data-hotkey="g p" data-selected-links="repo_pulls /github/hubot-scripts/pulls">
          <span class="octicon octicon-git-pull-request"></span> <span class="full-word">Pull requests</span>
          <span class="js-pull-replace-counter"></span>
          <img alt="" class="mini-loader" height="16" src="./asana_files/octocat-spinner-32-e513294efa576953719e4e2de888dd9cf929b7d62ed8d05f25e731d02452ab6c.gif" width="16">
</a>    </li>

      <li class="tooltipped tooltipped-w" aria-label="Wiki">
        <a href="https://github.com/github/hubot-scripts/wiki" aria-label="Wiki" class="js-selected-navigation-item sunken-menu-item" data-hotkey="g w" data-selected-links="repo_wiki /github/hubot-scripts/wiki">
          <span class="octicon octicon-book"></span> <span class="full-word">Wiki</span>
          <img alt="" class="mini-loader" height="16" src="./asana_files/octocat-spinner-32-e513294efa576953719e4e2de888dd9cf929b7d62ed8d05f25e731d02452ab6c.gif" width="16">
</a>      </li>
  </ul>
  <div class="sunken-menu-separator"></div>
  <ul class="sunken-menu-group">

    <li class="tooltipped tooltipped-w" aria-label="Pulse">
      <a href="https://github.com/github/hubot-scripts/pulse" aria-label="Pulse" class="js-selected-navigation-item sunken-menu-item" data-selected-links="pulse /github/hubot-scripts/pulse">
        <span class="octicon octicon-pulse"></span> <span class="full-word">Pulse</span>
        <img alt="" class="mini-loader" height="16" src="./asana_files/octocat-spinner-32-e513294efa576953719e4e2de888dd9cf929b7d62ed8d05f25e731d02452ab6c.gif" width="16">
</a>    </li>

    <li class="tooltipped tooltipped-w" aria-label="Graphs">
      <a href="https://github.com/github/hubot-scripts/graphs" aria-label="Graphs" class="js-selected-navigation-item sunken-menu-item" data-selected-links="repo_graphs repo_contributors /github/hubot-scripts/graphs">
        <span class="octicon octicon-graph"></span> <span class="full-word">Graphs</span>
        <img alt="" class="mini-loader" height="16" src="./asana_files/octocat-spinner-32-e513294efa576953719e4e2de888dd9cf929b7d62ed8d05f25e731d02452ab6c.gif" width="16">
</a>    </li>
  </ul>


</nav>

              <div class="only-with-full-nav">
                  
<div class="js-clone-url clone-url open" data-protocol-type="http">
  <h3><span class="text-emphasized">HTTPS</span> clone URL</h3>
  <div class="input-group js-zeroclipboard-container">
    <input type="text" class="input-mini input-monospace js-url-field js-zeroclipboard-target" value="https://github.com/github/hubot-scripts.git" readonly="readonly">
    <span class="input-group-button">
      <button aria-label="Copy to clipboard" class="js-zeroclipboard btn btn-sm zeroclipboard-button tooltipped tooltipped-s" data-copied-hint="Copied!" type="button"><span class="octicon octicon-clippy"></span></button>
    </span>
  </div>
</div>

  
<div class="js-clone-url clone-url " data-protocol-type="ssh">
  <h3><span class="text-emphasized">SSH</span> clone URL</h3>
  <div class="input-group js-zeroclipboard-container">
    <input type="text" class="input-mini input-monospace js-url-field js-zeroclipboard-target" value="git@github.com:github/hubot-scripts.git" readonly="readonly">
    <span class="input-group-button">
      <button aria-label="Copy to clipboard" class="js-zeroclipboard btn btn-sm zeroclipboard-button tooltipped tooltipped-s" data-copied-hint="Copied!" type="button"><span class="octicon octicon-clippy"></span></button>
    </span>
  </div>
</div>

  
<div class="js-clone-url clone-url " data-protocol-type="subversion">
  <h3><span class="text-emphasized">Subversion</span> checkout URL</h3>
  <div class="input-group js-zeroclipboard-container">
    <input type="text" class="input-mini input-monospace js-url-field js-zeroclipboard-target" value="https://github.com/github/hubot-scripts" readonly="readonly">
    <span class="input-group-button">
      <button aria-label="Copy to clipboard" class="js-zeroclipboard btn btn-sm zeroclipboard-button tooltipped tooltipped-s" data-copied-hint="Copied!" type="button"><span class="octicon octicon-clippy"></span></button>
    </span>
  </div>
</div>



<div class="clone-options">You can clone with
  <form accept-charset="UTF-8" action="https://github.com/users/set_protocol?protocol_selector=http&protocol_type=clone" class="inline-form js-clone-selector-form is-enabled" data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="✓"><input name="authenticity_token" type="hidden" value="sXk9tXfzCCvTl1hJBeTTKGWC8dj5q/Ug216LIEVKA7Paa2fvQlmA0lrQsSR4HsuIaxmIzWhsomSk0GgTFa9MAQ=="></div><button class="btn-link js-clone-selector" data-protocol="http" type="submit">HTTPS</button></form>, <form accept-charset="UTF-8" action="https://github.com/users/set_protocol?protocol_selector=ssh&protocol_type=clone" class="inline-form js-clone-selector-form is-enabled" data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="✓"><input name="authenticity_token" type="hidden" value="TgRs+sPV51YZEHhiTpw+T5hDq6jhO0tm1VUU7DiUu/LTwdCPcUWDk83cWAlhFnTNjiIs6VCASqcDlPm6mnA8qA=="></div><button class="btn-link js-clone-selector" data-protocol="ssh" type="submit">SSH</button></form>, or <form accept-charset="UTF-8" action="https://github.com/users/set_protocol?protocol_selector=subversion&protocol_type=clone" class="inline-form js-clone-selector-form is-enabled" data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="✓"><input name="authenticity_token" type="hidden" value="3/FRE4MSkxMy6XUoXBc4UsAuZcdNWlJfIQxu0O+vmSrlPH9GkpI/wc2y+H6zlA0Kn+dInZHl6lOPHEPPy7dG6A=="></div><button class="btn-link js-clone-selector" data-protocol="subversion" type="submit">Subversion</button></form>.
  <a href="https://help.github.com/articles/which-remote-url-should-i-use" class="help tooltipped tooltipped-n" aria-label="Get help on which URL is right for you.">
    <span class="octicon octicon-question"></span>
  </a>
</div>


  <a href="github-windows://openRepo/https://github.com/github/hubot-scripts" class="btn btn-sm sidebar-button" title="Save github/hubot-scripts to your computer and use it in GitHub Desktop." aria-label="Save github/hubot-scripts to your computer and use it in GitHub Desktop.">
    <span class="octicon octicon-device-desktop"></span>
    Clone in Desktop
  </a>


                <a href="https://github.com/github/hubot-scripts/archive/master.zip" class="btn btn-sm sidebar-button" aria-label="Download the contents of github/hubot-scripts as a zip file" title="Download the contents of github/hubot-scripts as a zip file" rel="nofollow">
                  <span class="octicon octicon-cloud-download"></span>
                  Download ZIP
                </a>
              </div>
        </div><!-- /.repository-sidebar -->

        <div id="js-repo-pjax-container" class="repository-content context-loader-container" data-pjax-container="">

          

<a href="https://github.com/github/hubot-scripts/blob/d70fc8d37aabced7d00e32492850e77a9aa8976d/src/scripts/asana.coffee" class="hidden js-permalink-shortcut" data-hotkey="y">Permalink</a>

<!-- blob contrib key: blob_contributors:v21:2ca53e70c0cfea764d7f208544f36601 -->

<div class="file-navigation js-zeroclipboard-container">
  
<div class="select-menu js-menu-container js-select-menu left">
  <span class="btn btn-sm select-menu-button js-menu-target css-truncate" data-hotkey="w" data-ref="master" title="master" role="button" aria-label="Switch branches or tags" tabindex="0" aria-haspopup="true">
    <span class="octicon octicon-git-branch"></span>
    <i>branch:</i>
    <span class="js-select-button css-truncate-target">master</span>
  </span>

  <div class="select-menu-modal-holder js-menu-content js-navigation-container" data-pjax="" aria-hidden="true">

    <div class="select-menu-modal">
      <div class="select-menu-header">
        <span class="select-menu-title">Switch branches/tags</span>
        <span class="octicon octicon-x js-menu-close" role="button" aria-label="Close"></span>
      </div>

      <div class="select-menu-filters">
        <div class="select-menu-text-filter">
          <input type="text" aria-label="Filter branches/tags" id="context-commitish-filter-field" class="js-filterable-field js-navigation-enable" placeholder="Filter branches/tags">
        </div>
        <div class="select-menu-tabs">
          <ul>
            <li class="select-menu-tab">
              <a href="https://github.com/github/hubot-scripts/blob/master/src/scripts/asana.coffee#" data-tab-filter="branches" data-filter-placeholder="Filter branches/tags" class="js-select-menu-tab">Branches</a>
            </li>
            <li class="select-menu-tab">
              <a href="https://github.com/github/hubot-scripts/blob/master/src/scripts/asana.coffee#" data-tab-filter="tags" data-filter-placeholder="Find a tag…" class="js-select-menu-tab">Tags</a>
            </li>
          </ul>
        </div>
      </div>

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="branches">

        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


            <a class="select-menu-item js-navigation-item js-navigation-open " href="https://github.com/github/hubot-scripts/blob/console-log-brain-write/src/scripts/asana.coffee" data-name="console-log-brain-write" data-skip-pjax="true" rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="console-log-brain-write">
                console-log-brain-write
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open " href="https://github.com/github/hubot-scripts/blob/deprecate-9gag/src/scripts/asana.coffee" data-name="deprecate-9gag" data-skip-pjax="true" rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="deprecate-9gag">
                deprecate-9gag
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open " href="https://github.com/github/hubot-scripts/blob/gh-twitter/src/scripts/asana.coffee" data-name="gh-twitter" data-skip-pjax="true" rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="gh-twitter">
                gh-twitter
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open selected" href="./asana_files/asana.coffee" data-name="master" data-skip-pjax="true" rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="master">
                master
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open " href="https://github.com/github/hubot-scripts/blob/twitter-config/src/scripts/asana.coffee" data-name="twitter-config" data-skip-pjax="true" rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="twitter-config">
                twitter-config
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open " href="https://github.com/github/hubot-scripts/blob/twitter-config-external/src/scripts/asana.coffee" data-name="twitter-config-external" data-skip-pjax="true" rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="twitter-config-external">
                twitter-config-external
              </span>
            </a>
        </div>

          <div class="select-menu-no-results">Nothing to show</div>
      </div>

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="tags">
        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="https://github.com/github/hubot-scripts/tree/v2.5.16/src/scripts/asana.coffee" data-name="v2.5.16" data-skip-pjax="true" rel="nofollow" class="js-navigation-open select-menu-item-text css-truncate-target" title="v2.5.16">v2.5.16</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="https://github.com/github/hubot-scripts/tree/v2.5.15/src/scripts/asana.coffee" data-name="v2.5.15" data-skip-pjax="true" rel="nofollow" class="js-navigation-open select-menu-item-text css-truncate-target" title="v2.5.15">v2.5.15</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="https://github.com/github/hubot-scripts/tree/v2.5.14/src/scripts/asana.coffee" data-name="v2.5.14" data-skip-pjax="true" rel="nofollow" class="js-navigation-open select-menu-item-text css-truncate-target" title="v2.5.14">v2.5.14</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="https://github.com/github/hubot-scripts/tree/v2.5.13/src/scripts/asana.coffee" data-name="v2.5.13" data-skip-pjax="true" rel="nofollow" class="js-navigation-open select-menu-item-text css-truncate-target" title="v2.5.13">v2.5.13</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="https://github.com/github/hubot-scripts/tree/v2.5.12/src/scripts/asana.coffee" data-name="v2.5.12" data-skip-pjax="true" rel="nofollow" class="js-navigation-open select-menu-item-text css-truncate-target" title="v2.5.12">v2.5.12</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="https://github.com/github/hubot-scripts/tree/v2.5.11/src/scripts/asana.coffee" data-name="v2.5.11" data-skip-pjax="true" rel="nofollow" class="js-navigation-open select-menu-item-text css-truncate-target" title="v2.5.11">v2.5.11</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="https://github.com/github/hubot-scripts/tree/v2.5.10/src/scripts/asana.coffee" data-name="v2.5.10" data-skip-pjax="true" rel="nofollow" class="js-navigation-open select-menu-item-text css-truncate-target" title="v2.5.10">v2.5.10</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="https://github.com/github/hubot-scripts/tree/v2.5.9/src/scripts/asana.coffee" data-name="v2.5.9" data-skip-pjax="true" rel="nofollow" class="js-navigation-open select-menu-item-text css-truncate-target" title="v2.5.9">v2.5.9</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="https://github.com/github/hubot-scripts/tree/v2.5.8/src/scripts/asana.coffee" data-name="v2.5.8" data-skip-pjax="true" rel="nofollow" class="js-navigation-open select-menu-item-text css-truncate-target" title="v2.5.8">v2.5.8</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="https://github.com/github/hubot-scripts/tree/v2.5.7/src/scripts/asana.coffee" data-name="v2.5.7" data-skip-pjax="true" rel="nofollow" class="js-navigation-open select-menu-item-text css-truncate-target" title="v2.5.7">v2.5.7</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="https://github.com/github/hubot-scripts/tree/v2.5.6/src/scripts/asana.coffee" data-name="v2.5.6" data-skip-pjax="true" rel="nofollow" class="js-navigation-open select-menu-item-text css-truncate-target" title="v2.5.6">v2.5.6</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="https://github.com/github/hubot-scripts/tree/v2.5.5/src/scripts/asana.coffee" data-name="v2.5.5" data-skip-pjax="true" rel="nofollow" class="js-navigation-open select-menu-item-text css-truncate-target" title="v2.5.5">v2.5.5</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="https://github.com/github/hubot-scripts/tree/v2.5.4/src/scripts/asana.coffee" data-name="v2.5.4" data-skip-pjax="true" rel="nofollow" class="js-navigation-open select-menu-item-text css-truncate-target" title="v2.5.4">v2.5.4</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="https://github.com/github/hubot-scripts/tree/v2.5.3/src/scripts/asana.coffee" data-name="v2.5.3" data-skip-pjax="true" rel="nofollow" class="js-navigation-open select-menu-item-text css-truncate-target" title="v2.5.3">v2.5.3</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="https://github.com/github/hubot-scripts/tree/v2.5.2/src/scripts/asana.coffee" data-name="v2.5.2" data-skip-pjax="true" rel="nofollow" class="js-navigation-open select-menu-item-text css-truncate-target" title="v2.5.2">v2.5.2</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="https://github.com/github/hubot-scripts/tree/v2.5.1/src/scripts/asana.coffee" data-name="v2.5.1" data-skip-pjax="true" rel="nofollow" class="js-navigation-open select-menu-item-text css-truncate-target" title="v2.5.1">v2.5.1</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="https://github.com/github/hubot-scripts/tree/v2.5.0/src/scripts/asana.coffee" data-name="v2.5.0" data-skip-pjax="true" rel="nofollow" class="js-navigation-open select-menu-item-text css-truncate-target" title="v2.5.0">v2.5.0</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="https://github.com/github/hubot-scripts/tree/v2.4.8/src/scripts/asana.coffee" data-name="v2.4.8" data-skip-pjax="true" rel="nofollow" class="js-navigation-open select-menu-item-text css-truncate-target" title="v2.4.8">v2.4.8</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="https://github.com/github/hubot-scripts/tree/v2.4.7/src/scripts/asana.coffee" data-name="v2.4.7" data-skip-pjax="true" rel="nofollow" class="js-navigation-open select-menu-item-text css-truncate-target" title="v2.4.7">v2.4.7</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="https://github.com/github/hubot-scripts/tree/v2.4.6/src/scripts/asana.coffee" data-name="v2.4.6" data-skip-pjax="true" rel="nofollow" class="js-navigation-open select-menu-item-text css-truncate-target" title="v2.4.6">v2.4.6</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="https://github.com/github/hubot-scripts/tree/v2.4.5/src/scripts/asana.coffee" data-name="v2.4.5" data-skip-pjax="true" rel="nofollow" class="js-navigation-open select-menu-item-text css-truncate-target" title="v2.4.5">v2.4.5</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="https://github.com/github/hubot-scripts/tree/v2.4.3/src/scripts/asana.coffee" data-name="v2.4.3" data-skip-pjax="true" rel="nofollow" class="js-navigation-open select-menu-item-text css-truncate-target" title="v2.4.3">v2.4.3</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="https://github.com/github/hubot-scripts/tree/v2.4.2/src/scripts/asana.coffee" data-name="v2.4.2" data-skip-pjax="true" rel="nofollow" class="js-navigation-open select-menu-item-text css-truncate-target" title="v2.4.2">v2.4.2</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="https://github.com/github/hubot-scripts/tree/v2.4.1/src/scripts/asana.coffee" data-name="v2.4.1" data-skip-pjax="true" rel="nofollow" class="js-navigation-open select-menu-item-text css-truncate-target" title="v2.4.1">v2.4.1</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="https://github.com/github/hubot-scripts/tree/v2.2.2/src/scripts/asana.coffee" data-name="v2.2.2" data-skip-pjax="true" rel="nofollow" class="js-navigation-open select-menu-item-text css-truncate-target" title="v2.2.2">v2.2.2</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="https://github.com/github/hubot-scripts/tree/v2.2.1/src/scripts/asana.coffee" data-name="v2.2.1" data-skip-pjax="true" rel="nofollow" class="js-navigation-open select-menu-item-text css-truncate-target" title="v2.2.1">v2.2.1</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="https://github.com/github/hubot-scripts/tree/v2.2.0/src/scripts/asana.coffee" data-name="v2.2.0" data-skip-pjax="true" rel="nofollow" class="js-navigation-open select-menu-item-text css-truncate-target" title="v2.2.0">v2.2.0</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="https://github.com/github/hubot-scripts/tree/v2.1.3/src/scripts/asana.coffee" data-name="v2.1.3" data-skip-pjax="true" rel="nofollow" class="js-navigation-open select-menu-item-text css-truncate-target" title="v2.1.3">v2.1.3</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="https://github.com/github/hubot-scripts/tree/v2.1.2/src/scripts/asana.coffee" data-name="v2.1.2" data-skip-pjax="true" rel="nofollow" class="js-navigation-open select-menu-item-text css-truncate-target" title="v2.1.2">v2.1.2</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="https://github.com/github/hubot-scripts/tree/v2.1.1/src/scripts/asana.coffee" data-name="v2.1.1" data-skip-pjax="true" rel="nofollow" class="js-navigation-open select-menu-item-text css-truncate-target" title="v2.1.1">v2.1.1</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="https://github.com/github/hubot-scripts/tree/v2.1.0/src/scripts/asana.coffee" data-name="v2.1.0" data-skip-pjax="true" rel="nofollow" class="js-navigation-open select-menu-item-text css-truncate-target" title="v2.1.0">v2.1.0</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="https://github.com/github/hubot-scripts/tree/v2.0.7/src/scripts/asana.coffee" data-name="v2.0.7" data-skip-pjax="true" rel="nofollow" class="js-navigation-open select-menu-item-text css-truncate-target" title="v2.0.7">v2.0.7</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="https://github.com/github/hubot-scripts/tree/v2.0.6/src/scripts/asana.coffee" data-name="v2.0.6" data-skip-pjax="true" rel="nofollow" class="js-navigation-open select-menu-item-text css-truncate-target" title="v2.0.6">v2.0.6</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="https://github.com/github/hubot-scripts/tree/v2.0.5/src/scripts/asana.coffee" data-name="v2.0.5" data-skip-pjax="true" rel="nofollow" class="js-navigation-open select-menu-item-text css-truncate-target" title="v2.0.5">v2.0.5</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="https://github.com/github/hubot-scripts/tree/v2.0.4/src/scripts/asana.coffee" data-name="v2.0.4" data-skip-pjax="true" rel="nofollow" class="js-navigation-open select-menu-item-text css-truncate-target" title="v2.0.4">v2.0.4</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="https://github.com/github/hubot-scripts/tree/v2.0.3/src/scripts/asana.coffee" data-name="v2.0.3" data-skip-pjax="true" rel="nofollow" class="js-navigation-open select-menu-item-text css-truncate-target" title="v2.0.3">v2.0.3</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="https://github.com/github/hubot-scripts/tree/v2.0.2/src/scripts/asana.coffee" data-name="v2.0.2" data-skip-pjax="true" rel="nofollow" class="js-navigation-open select-menu-item-text css-truncate-target" title="v2.0.2">v2.0.2</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="https://github.com/github/hubot-scripts/tree/v2.0.1/src/scripts/asana.coffee" data-name="v2.0.1" data-skip-pjax="true" rel="nofollow" class="js-navigation-open select-menu-item-text css-truncate-target" title="v2.0.1">v2.0.1</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="https://github.com/github/hubot-scripts/tree/v2.0.0/src/scripts/asana.coffee" data-name="v2.0.0" data-skip-pjax="true" rel="nofollow" class="js-navigation-open select-menu-item-text css-truncate-target" title="v2.0.0">v2.0.0</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="https://github.com/github/hubot-scripts/tree/v1.1.8/src/scripts/asana.coffee" data-name="v1.1.8" data-skip-pjax="true" rel="nofollow" class="js-navigation-open select-menu-item-text css-truncate-target" title="v1.1.8">v1.1.8</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="https://github.com/github/hubot-scripts/tree/v1.1.7/src/scripts/asana.coffee" data-name="v1.1.7" data-skip-pjax="true" rel="nofollow" class="js-navigation-open select-menu-item-text css-truncate-target" title="v1.1.7">v1.1.7</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="https://github.com/github/hubot-scripts/tree/v1.1.6/src/scripts/asana.coffee" data-name="v1.1.6" data-skip-pjax="true" rel="nofollow" class="js-navigation-open select-menu-item-text css-truncate-target" title="v1.1.6">v1.1.6</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="https://github.com/github/hubot-scripts/tree/v1.1.5/src/scripts/asana.coffee" data-name="v1.1.5" data-skip-pjax="true" rel="nofollow" class="js-navigation-open select-menu-item-text css-truncate-target" title="v1.1.5">v1.1.5</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="https://github.com/github/hubot-scripts/tree/v1.1.4/src/scripts/asana.coffee" data-name="v1.1.4" data-skip-pjax="true" rel="nofollow" class="js-navigation-open select-menu-item-text css-truncate-target" title="v1.1.4">v1.1.4</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="https://github.com/github/hubot-scripts/tree/v1.1.3/src/scripts/asana.coffee" data-name="v1.1.3" data-skip-pjax="true" rel="nofollow" class="js-navigation-open select-menu-item-text css-truncate-target" title="v1.1.3">v1.1.3</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="https://github.com/github/hubot-scripts/tree/v1.1.2/src/scripts/asana.coffee" data-name="v1.1.2" data-skip-pjax="true" rel="nofollow" class="js-navigation-open select-menu-item-text css-truncate-target" title="v1.1.2">v1.1.2</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="https://github.com/github/hubot-scripts/tree/v1.1.1/src/scripts/asana.coffee" data-name="v1.1.1" data-skip-pjax="true" rel="nofollow" class="js-navigation-open select-menu-item-text css-truncate-target" title="v1.1.1">v1.1.1</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="https://github.com/github/hubot-scripts/tree/v1.1.0/src/scripts/asana.coffee" data-name="v1.1.0" data-skip-pjax="true" rel="nofollow" class="js-navigation-open select-menu-item-text css-truncate-target" title="v1.1.0">v1.1.0</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="https://github.com/github/hubot-scripts/tree/v1.0.4/src/scripts/asana.coffee" data-name="v1.0.4" data-skip-pjax="true" rel="nofollow" class="js-navigation-open select-menu-item-text css-truncate-target" title="v1.0.4">v1.0.4</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="https://github.com/github/hubot-scripts/tree/v1.0.3/src/scripts/asana.coffee" data-name="v1.0.3" data-skip-pjax="true" rel="nofollow" class="js-navigation-open select-menu-item-text css-truncate-target" title="v1.0.3">v1.0.3</a>
            </div>
        </div>

        <div class="select-menu-no-results">Nothing to show</div>
      </div>

    </div>
  </div>
</div>

  <div class="btn-group right">
    <a href="https://github.com/github/hubot-scripts/find/master" class="js-show-file-finder btn btn-sm empty-icon tooltipped tooltipped-s" data-pjax="" data-hotkey="t" aria-label="Quickly jump between files">
      <span class="octicon octicon-list-unordered"></span>
    </a>
    <button aria-label="Copy file path to clipboard" class="js-zeroclipboard btn btn-sm zeroclipboard-button tooltipped tooltipped-s" data-copied-hint="Copied!" type="button"><span class="octicon octicon-clippy"></span></button>
  </div>

  <div class="breadcrumb js-zeroclipboard-target">
    <span class="repo-root js-repo-root"><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="https://github.com/github/hubot-scripts" class="" data-branch="master" data-pjax="true" itemscope="url"><span itemprop="title">hubot-scripts</span></a></span></span><span class="separator">/</span><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="https://github.com/github/hubot-scripts/tree/master/src" class="" data-branch="master" data-pjax="true" itemscope="url"><span itemprop="title">src</span></a></span><span class="separator">/</span><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="https://github.com/github/hubot-scripts/tree/master/src/scripts" class="" data-branch="master" data-pjax="true" itemscope="url"><span itemprop="title">scripts</span></a></span><span class="separator">/</span><strong class="final-path">asana.coffee</strong>
  </div>
</div>


  <div class="commit file-history-tease">
    <div class="file-history-tease-header">
        <img alt="@ngs" class="avatar" height="24" src="./asana_files/18631" width="24">
        <span class="author"><a href="https://github.com/ngs" rel="contributor">ngs</a></span>
        <time datetime="2014-06-11T19:41:57Z" is="relative-time" title="Jun 12, 2014, 3:41 AM GMT+8">on Jun 12, 2014</time>
        <div class="commit-title">
            <a href="https://github.com/github/hubot-scripts/commit/32e8cb5045ae632f6536fb685046c5b26018896b" class="message" data-pjax="true" title="Use ScopedClient:auth instead of building Authorization header">Use ScopedClient:auth instead of building Authorization header</a>
        </div>
    </div>

    <div class="participation">
      <p class="quickstat">
        <a href="https://github.com/github/hubot-scripts/blob/master/src/scripts/asana.coffee#blob_contributors_box" rel="facebox">
          <strong>5</strong>
           contributors
        </a>
      </p>
          <a class="avatar-link tooltipped tooltipped-s" aria-label="abh1nav" href="https://github.com/github/hubot-scripts/commits/master/src/scripts/asana.coffee?author=abh1nav"><img alt="@abh1nav" class="avatar" height="20" src="./asana_files/599367" width="20"> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="tombell" href="https://github.com/github/hubot-scripts/commits/master/src/scripts/asana.coffee?author=tombell"><img alt="@tombell" class="avatar" height="20" src="./asana_files/129327" width="20"> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="rajiv" href="https://github.com/github/hubot-scripts/commits/master/src/scripts/asana.coffee?author=rajiv"><img alt="@rajiv" class="avatar" height="20" src="./asana_files/42373" width="20"> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="buley" href="https://github.com/github/hubot-scripts/commits/master/src/scripts/asana.coffee?author=buley"><img alt="@buley" class="avatar" height="20" src="./asana_files/86985" width="20"> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="ngs" href="https://github.com/github/hubot-scripts/commits/master/src/scripts/asana.coffee?author=ngs"><img alt="@ngs" class="avatar" height="20" src="./asana_files/18631(1)" width="20"> </a>


    </div>
    <div id="blob_contributors_box" style="display:none">
      <h2 class="facebox-header">Users who have contributed to this file</h2>
      <ul class="facebox-user-list">
          <li class="facebox-user-list-item">
            <img alt="@abh1nav" height="24" src="./asana_files/599367(1)" width="24">
            <a href="https://github.com/abh1nav">abh1nav</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@tombell" height="24" src="./asana_files/129327(1)" width="24">
            <a href="https://github.com/tombell">tombell</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@rajiv" height="24" src="./asana_files/42373(1)" width="24">
            <a href="https://github.com/rajiv">rajiv</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@buley" height="24" src="./asana_files/86985(1)" width="24">
            <a href="https://github.com/buley">buley</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@ngs" height="24" src="./asana_files/18631" width="24">
            <a href="https://github.com/ngs">ngs</a>
          </li>
      </ul>
    </div>
  </div>

<div class="file">
  <div class="file-header">
    <div class="file-actions">

      <div class="btn-group">
        <a href="https://github.com/github/hubot-scripts/raw/master/src/scripts/asana.coffee" class="btn btn-sm " id="raw-url">Raw</a>
          <a href="https://github.com/github/hubot-scripts/blame/master/src/scripts/asana.coffee" class="btn btn-sm js-update-url-with-hash">Blame</a>
        <a href="https://github.com/github/hubot-scripts/commits/master/src/scripts/asana.coffee" class="btn btn-sm " rel="nofollow">History</a>
      </div>

        <a class="octicon-btn tooltipped tooltipped-nw" href="github-windows://openRepo/https://github.com/github/hubot-scripts?branch=master&filepath=src%2Fscripts%2Fasana.coffee" aria-label="Open this file in GitHub for Windows" data-ga-click="Repository, open with desktop, type:windows">
            <span class="octicon octicon-device-desktop"></span>
        </a>

            <form accept-charset="UTF-8" action="https://github.com/github/hubot-scripts/edit/master/src/scripts/asana.coffee" class="inline-form" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="✓"><input name="authenticity_token" type="hidden" value="B0MQk38qQLQRZRYme6kz32V8ZL61wbOBM8Jeu3ACozchTCb8MGEOiBDflDocG8hMggGazqrOrfml1AodvLrgLA=="></div>
              <button class="octicon-btn tooltipped tooltipped-n" type="submit" aria-label="Fork this project and edit the file" data-hotkey="e" data-disable-with="">
                <span class="octicon octicon-pencil"></span>
              </button>
</form>
          <form accept-charset="UTF-8" action="https://github.com/github/hubot-scripts/delete/master/src/scripts/asana.coffee" class="inline-form" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="✓"><input name="authenticity_token" type="hidden" value="15pi5RrNe9GVPNEPsgIObMLjDDrenY6IONJF/Ey3Ks+MLLbHBusU9EnWmsws+WVw8gPA6yh7ssfd7sfpEXIMxg=="></div>
            <button class="octicon-btn octicon-btn-danger tooltipped tooltipped-n" type="submit" aria-label="Fork this project and delete this file" data-disable-with="">
              <span class="octicon octicon-trashcan"></span>
            </button>
</form>    </div>

    <div class="file-info">
        109 lines (98 sloc)
        <span class="file-info-divider"></span>
      3.727 kB
    </div>
  </div>
  
  <div class="blob-wrapper data type-coffeescript">
      <table class="highlight tab-size js-file-line-container" data-tab-size="8">
      <tbody><tr>
        <td id="L1" class="blob-num js-line-number" data-line-number="1"></td>
        <td id="LC1" class="blob-code blob-code-inner js-file-line"><span class="pl-c"># Description:</span></td>
      </tr>
      <tr>
        <td id="L2" class="blob-num js-line-number" data-line-number="2"></td>
        <td id="LC2" class="blob-code blob-code-inner js-file-line"><span class="pl-c">#   A way to add tasks to Asana</span></td>
      </tr>
      <tr>
        <td id="L3" class="blob-num js-line-number" data-line-number="3"></td>
        <td id="LC3" class="blob-code blob-code-inner js-file-line"><span class="pl-c">#</span></td>
      </tr>
      <tr>
        <td id="L4" class="blob-num js-line-number" data-line-number="4"></td>
        <td id="LC4" class="blob-code blob-code-inner js-file-line"><span class="pl-c"># Dependencies:</span></td>
      </tr>
      <tr>
        <td id="L5" class="blob-num js-line-number" data-line-number="5"></td>
        <td id="LC5" class="blob-code blob-code-inner js-file-line"><span class="pl-c">#   None</span></td>
      </tr>
      <tr>
        <td id="L6" class="blob-num js-line-number" data-line-number="6"></td>
        <td id="LC6" class="blob-code blob-code-inner js-file-line"><span class="pl-c">#</span></td>
      </tr>
      <tr>
        <td id="L7" class="blob-num js-line-number" data-line-number="7"></td>
        <td id="LC7" class="blob-code blob-code-inner js-file-line"><span class="pl-c"># Configuration:</span></td>
      </tr>
      <tr>
        <td id="L8" class="blob-num js-line-number" data-line-number="8"></td>
        <td id="LC8" class="blob-code blob-code-inner js-file-line"><span class="pl-c">#   HUBOT_ASANA_API_KEY - find this in Account Settings -&gt; API</span></td>
      </tr>
      <tr>
        <td id="L9" class="blob-num js-line-number" data-line-number="9"></td>
        <td id="LC9" class="blob-code blob-code-inner js-file-line"><span class="pl-c">#</span></td>
      </tr>
      <tr>
        <td id="L10" class="blob-num js-line-number" data-line-number="10"></td>
        <td id="LC10" class="blob-code blob-code-inner js-file-line"><span class="pl-c">#   HUBOT_ASANA_WORKSPACE_ID - list all workspaces using</span></td>
      </tr>
      <tr>
        <td id="L11" class="blob-num js-line-number" data-line-number="11"></td>
        <td id="LC11" class="blob-code blob-code-inner js-file-line"><span class="pl-c">#   curl -u &lt;api_key&gt;: https://app.asana.com/api/1.0/workspaces</span></td>
      </tr>
      <tr>
        <td id="L12" class="blob-num js-line-number" data-line-number="12"></td>
        <td id="LC12" class="blob-code blob-code-inner js-file-line"><span class="pl-c">#   (note the colon after the api key)</span></td>
      </tr>
      <tr>
        <td id="L13" class="blob-num js-line-number" data-line-number="13"></td>
        <td id="LC13" class="blob-code blob-code-inner js-file-line"><span class="pl-c">#</span></td>
      </tr>
      <tr>
        <td id="L14" class="blob-num js-line-number" data-line-number="14"></td>
        <td id="LC14" class="blob-code blob-code-inner js-file-line"><span class="pl-c">#   HUBOT_ASANA_PROJECT_ID - list all projects in the workspace using:</span></td>
      </tr>
      <tr>
        <td id="L15" class="blob-num js-line-number" data-line-number="15"></td>
        <td id="LC15" class="blob-code blob-code-inner js-file-line"><span class="pl-c">#   curl -u &lt;api_key&gt;: https://app.asana.com/api/1.0/workspaces/&lt;workspace id&gt;/projects</span></td>
      </tr>
      <tr>
        <td id="L16" class="blob-num js-line-number" data-line-number="16"></td>
        <td id="LC16" class="blob-code blob-code-inner js-file-line"><span class="pl-c">#</span></td>
      </tr>
      <tr>
        <td id="L17" class="blob-num js-line-number" data-line-number="17"></td>
        <td id="LC17" class="blob-code blob-code-inner js-file-line"><span class="pl-c"># Commands:</span></td>
      </tr>
      <tr>
        <td id="L18" class="blob-num js-line-number" data-line-number="18"></td>
        <td id="LC18" class="blob-code blob-code-inner js-file-line"><span class="pl-c">#   todo: @name? &lt;task directive&gt; - public message starting with todo: will add task, optional @name to assign task</span></td>
      </tr>
      <tr>
        <td id="L19" class="blob-num js-line-number" data-line-number="19"></td>
        <td id="LC19" class="blob-code blob-code-inner js-file-line"><span class="pl-c">#   hubot todo users - Message the bot directly to list all available users in the workspace</span></td>
      </tr>
      <tr>
        <td id="L20" class="blob-num js-line-number" data-line-number="20"></td>
        <td id="LC20" class="blob-code blob-code-inner js-file-line"><span class="pl-c">#</span></td>
      </tr>
      <tr>
        <td id="L21" class="blob-num js-line-number" data-line-number="21"></td>
        <td id="LC21" class="blob-code blob-code-inner js-file-line"><span class="pl-c"># Author:</span></td>
      </tr>
      <tr>
        <td id="L22" class="blob-num js-line-number" data-line-number="22"></td>
        <td id="LC22" class="blob-code blob-code-inner js-file-line"><span class="pl-c">#   idpro</span></td>
      </tr>
      <tr>
        <td id="L23" class="blob-num js-line-number" data-line-number="23"></td>
        <td id="LC23" class="blob-code blob-code-inner js-file-line"><span class="pl-c">#   abh1nav</span></td>
      </tr>
      <tr>
        <td id="L24" class="blob-num js-line-number" data-line-number="24"></td>
        <td id="LC24" class="blob-code blob-code-inner js-file-line"><span class="pl-c">#   rajiv</span></td>
      </tr>
      <tr>
        <td id="L25" class="blob-num js-line-number" data-line-number="25"></td>
        <td id="LC25" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L26" class="blob-num js-line-number" data-line-number="26"></td>
        <td id="LC26" class="blob-code blob-code-inner js-file-line"><span class="pl-v"><span class="pl-v">url  <span class="pl-k">=</span></span></span> <span class="pl-s"><span class="pl-pds">'</span>https://app.asana.com/api/1.0<span class="pl-pds">'</span></span></td>
      </tr>
      <tr>
        <td id="L27" class="blob-num js-line-number" data-line-number="27"></td>
        <td id="LC27" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L28" class="blob-num js-line-number" data-line-number="28"></td>
        <td id="LC28" class="blob-code blob-code-inner js-file-line"><span class="pl-v"><span class="pl-v">workspace <span class="pl-k">=</span></span></span> <span class="pl-c1">process</span>.env.HUBOT_ASANA_WORKSPACE_ID</td>
      </tr>
      <tr>
        <td id="L29" class="blob-num js-line-number" data-line-number="29"></td>
        <td id="LC29" class="blob-code blob-code-inner js-file-line"><span class="pl-v"><span class="pl-v">project <span class="pl-k">=</span></span></span> <span class="pl-c1">process</span>.env.HUBOT_ASANA_PROJECT_ID</td>
      </tr>
      <tr>
        <td id="L30" class="blob-num js-line-number" data-line-number="30"></td>
        <td id="LC30" class="blob-code blob-code-inner js-file-line"><span class="pl-v"><span class="pl-v">api_key <span class="pl-k">=</span></span></span> <span class="pl-c1">process</span>.env.HUBOT_ASANA_API_KEY</td>
      </tr>
      <tr>
        <td id="L31" class="blob-num js-line-number" data-line-number="31"></td>
        <td id="LC31" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L32" class="blob-num js-line-number" data-line-number="32"></td>
        <td id="LC32" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L33" class="blob-num js-line-number" data-line-number="33"></td>
        <td id="LC33" class="blob-code blob-code-inner js-file-line"><span class="pl-en">getRequest </span><span class="pl-k">=</span><span class="pl-smi"> <span class="pl-smi">(msg, path, callback)</span></span> <span class="pl-k"><span class="pl-k">-&gt;</span></span></td>
      </tr>
      <tr>
        <td id="L34" class="blob-num js-line-number" data-line-number="34"></td>
        <td id="LC34" class="blob-code blob-code-inner js-file-line">  msg.http(<span class="pl-s"><span class="pl-pds">"</span><span class="pl-s1"><span class="pl-pse">#{</span>url<span class="pl-pse">}#{</span>path<span class="pl-pse">}</span></span><span class="pl-pds">"</span></span>)</td>
      </tr>
      <tr>
        <td id="L35" class="blob-num js-line-number" data-line-number="35"></td>
        <td id="LC35" class="blob-code blob-code-inner js-file-line">    .headers(<span class="pl-s"><span class="pl-pds">"</span>Accept<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>application/json<span class="pl-pds">"</span></span>)</td>
      </tr>
      <tr>
        <td id="L36" class="blob-num js-line-number" data-line-number="36"></td>
        <td id="LC36" class="blob-code blob-code-inner js-file-line">    .auth(api_key, <span class="pl-s"><span class="pl-pds">'</span><span class="pl-pds">'</span></span>)</td>
      </tr>
      <tr>
        <td id="L37" class="blob-num js-line-number" data-line-number="37"></td>
        <td id="LC37" class="blob-code blob-code-inner js-file-line">    .get() <span class="pl-smi">(err, res, body)</span> <span class="pl-k">-&gt;</span></td>
      </tr>
      <tr>
        <td id="L38" class="blob-num js-line-number" data-line-number="38"></td>
        <td id="LC38" class="blob-code blob-code-inner js-file-line">      callback(err, res, body)</td>
      </tr>
      <tr>
        <td id="L39" class="blob-num js-line-number" data-line-number="39"></td>
        <td id="LC39" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L40" class="blob-num js-line-number" data-line-number="40"></td>
        <td id="LC40" class="blob-code blob-code-inner js-file-line"><span class="pl-en">postRequest </span><span class="pl-k">=</span><span class="pl-smi"> <span class="pl-smi">(msg, path, params, callback)</span></span> <span class="pl-k"><span class="pl-k">-&gt;</span></span></td>
      </tr>
      <tr>
        <td id="L41" class="blob-num js-line-number" data-line-number="41"></td>
        <td id="LC41" class="blob-code blob-code-inner js-file-line">  <span class="pl-v"><span class="pl-v">stringParams <span class="pl-k">=</span></span></span> JSON.stringify params</td>
      </tr>
      <tr>
        <td id="L42" class="blob-num js-line-number" data-line-number="42"></td>
        <td id="LC42" class="blob-code blob-code-inner js-file-line">  msg.http(<span class="pl-s"><span class="pl-pds">"</span><span class="pl-s1"><span class="pl-pse">#{</span>url<span class="pl-pse">}#{</span>path<span class="pl-pse">}</span></span><span class="pl-pds">"</span></span>)</td>
      </tr>
      <tr>
        <td id="L43" class="blob-num js-line-number" data-line-number="43"></td>
        <td id="LC43" class="blob-code blob-code-inner js-file-line">    .headers(<span class="pl-s"><span class="pl-pds">"</span>Content-Length<span class="pl-pds">"</span></span><span class="pl-k">:</span> stringParams.length, <span class="pl-s"><span class="pl-pds">"</span>Accept<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>application/json<span class="pl-pds">"</span></span>)</td>
      </tr>
      <tr>
        <td id="L44" class="blob-num js-line-number" data-line-number="44"></td>
        <td id="LC44" class="blob-code blob-code-inner js-file-line">    .auth(api_key, <span class="pl-s"><span class="pl-pds">'</span><span class="pl-pds">'</span></span>)</td>
      </tr>
      <tr>
        <td id="L45" class="blob-num js-line-number" data-line-number="45"></td>
        <td id="LC45" class="blob-code blob-code-inner js-file-line">    .post(stringParams) <span class="pl-smi">(err, res, body)</span> <span class="pl-k">-&gt;</span></td>
      </tr>
      <tr>
        <td id="L46" class="blob-num js-line-number" data-line-number="46"></td>
        <td id="LC46" class="blob-code blob-code-inner js-file-line">      callback(err, res, body)</td>
      </tr>
      <tr>
        <td id="L47" class="blob-num js-line-number" data-line-number="47"></td>
        <td id="LC47" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L48" class="blob-num js-line-number" data-line-number="48"></td>
        <td id="LC48" class="blob-code blob-code-inner js-file-line"><span class="pl-en">addTask </span><span class="pl-k">=</span><span class="pl-smi"> <span class="pl-smi">(msg, taskName, path, params, userAcct)</span></span> <span class="pl-k"><span class="pl-k">-&gt;</span></span></td>
      </tr>
      <tr>
        <td id="L49" class="blob-num js-line-number" data-line-number="49"></td>
        <td id="LC49" class="blob-code blob-code-inner js-file-line">  postRequest msg, <span class="pl-s"><span class="pl-pds">'</span>/tasks<span class="pl-pds">'</span></span>, params, <span class="pl-smi">(err, res, body)</span> <span class="pl-k">-&gt;</span></td>
      </tr>
      <tr>
        <td id="L50" class="blob-num js-line-number" data-line-number="50"></td>
        <td id="LC50" class="blob-code blob-code-inner js-file-line">    <span class="pl-v"><span class="pl-v">response <span class="pl-k">=</span></span></span> JSON.parse body</td>
      </tr>
      <tr>
        <td id="L51" class="blob-num js-line-number" data-line-number="51"></td>
        <td id="LC51" class="blob-code blob-code-inner js-file-line">    <span class="pl-k">if</span> response.data.errors</td>
      </tr>
      <tr>
        <td id="L52" class="blob-num js-line-number" data-line-number="52"></td>
        <td id="LC52" class="blob-code blob-code-inner js-file-line">      msg.send response.data.errors</td>
      </tr>
      <tr>
        <td id="L53" class="blob-num js-line-number" data-line-number="53"></td>
        <td id="LC53" class="blob-code blob-code-inner js-file-line">    <span class="pl-k">else</span></td>
      </tr>
      <tr>
        <td id="L54" class="blob-num js-line-number" data-line-number="54"></td>
        <td id="LC54" class="blob-code blob-code-inner js-file-line">      <span class="pl-v"><span class="pl-v">projectId <span class="pl-k">=</span></span></span> response.data.id</td>
      </tr>
      <tr>
        <td id="L55" class="blob-num js-line-number" data-line-number="55"></td>
        <td id="LC55" class="blob-code blob-code-inner js-file-line">      <span class="pl-v"><span class="pl-v">params <span class="pl-k">=</span></span></span> {<span class="pl-v"><span class="pl-v">data:</span></span>{<span class="pl-v"><span class="pl-v">project:</span></span> <span class="pl-s"><span class="pl-pds">"</span><span class="pl-s1"><span class="pl-pse">#{</span>project<span class="pl-pse">}</span></span><span class="pl-pds">"</span></span>}}</td>
      </tr>
      <tr>
        <td id="L56" class="blob-num js-line-number" data-line-number="56"></td>
        <td id="LC56" class="blob-code blob-code-inner js-file-line">      postRequest msg, <span class="pl-s"><span class="pl-pds">"</span>/tasks/<span class="pl-s1"><span class="pl-pse">#{</span>projectId<span class="pl-pse">}</span></span>/addProject<span class="pl-pds">"</span></span>, params, <span class="pl-smi">(err, res, body)</span> <span class="pl-k">-&gt;</span></td>
      </tr>
      <tr>
        <td id="L57" class="blob-num js-line-number" data-line-number="57"></td>
        <td id="LC57" class="blob-code blob-code-inner js-file-line">        <span class="pl-v"><span class="pl-v">response <span class="pl-k">=</span></span></span> JSON.parse body</td>
      </tr>
      <tr>
        <td id="L58" class="blob-num js-line-number" data-line-number="58"></td>
        <td id="LC58" class="blob-code blob-code-inner js-file-line">        <span class="pl-k">if</span> response.data</td>
      </tr>
      <tr>
        <td id="L59" class="blob-num js-line-number" data-line-number="59"></td>
        <td id="LC59" class="blob-code blob-code-inner js-file-line">          <span class="pl-k">if</span> userAcct</td>
      </tr>
      <tr>
        <td id="L60" class="blob-num js-line-number" data-line-number="60"></td>
        <td id="LC60" class="blob-code blob-code-inner js-file-line">            msg.send <span class="pl-s"><span class="pl-pds">"</span>Task Created : <span class="pl-s1"><span class="pl-pse">#{</span>taskName<span class="pl-pse">}</span></span> : Assigned to @<span class="pl-s1"><span class="pl-pse">#{</span>userAcct<span class="pl-pse">}</span></span><span class="pl-pds">"</span></span></td>
      </tr>
      <tr>
        <td id="L61" class="blob-num js-line-number" data-line-number="61"></td>
        <td id="LC61" class="blob-code blob-code-inner js-file-line">          <span class="pl-k">else</span></td>
      </tr>
      <tr>
        <td id="L62" class="blob-num js-line-number" data-line-number="62"></td>
        <td id="LC62" class="blob-code blob-code-inner js-file-line">            msg.send <span class="pl-s"><span class="pl-pds">"</span>Task Created : <span class="pl-s1"><span class="pl-pse">#{</span>taskName<span class="pl-pse">}</span></span><span class="pl-pds">"</span></span></td>
      </tr>
      <tr>
        <td id="L63" class="blob-num js-line-number" data-line-number="63"></td>
        <td id="LC63" class="blob-code blob-code-inner js-file-line">        <span class="pl-k">else</span></td>
      </tr>
      <tr>
        <td id="L64" class="blob-num js-line-number" data-line-number="64"></td>
        <td id="LC64" class="blob-code blob-code-inner js-file-line">          msg.send <span class="pl-s"><span class="pl-pds">"</span>Error creating task.<span class="pl-pds">"</span></span></td>
      </tr>
      <tr>
        <td id="L65" class="blob-num js-line-number" data-line-number="65"></td>
        <td id="LC65" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L66" class="blob-num js-line-number" data-line-number="66"></td>
        <td id="LC66" class="blob-code blob-code-inner js-file-line"><span class="pl-en">module.exports </span><span class="pl-k">=</span><span class="pl-smi"> <span class="pl-smi">(robot)</span></span> <span class="pl-k"><span class="pl-k">-&gt;</span></span></td>
      </tr>
      <tr>
        <td id="L67" class="blob-num js-line-number" data-line-number="67"></td>
        <td id="LC67" class="blob-code blob-code-inner js-file-line"><span class="pl-c"># Add a task</span></td>
      </tr>
      <tr>
        <td id="L68" class="blob-num js-line-number" data-line-number="68"></td>
        <td id="LC68" class="blob-code blob-code-inner js-file-line">  robot.hear <span class="pl-sr"><span class="pl-pds">/</span><span class="pl-k">^</span>(todo<span class="pl-k">|</span>task):<span class="pl-c1">\s</span><span class="pl-k">?</span>(@<span class="pl-c1">\w</span><span class="pl-k">+</span>)<span class="pl-k">?</span>(<span class="pl-c1">.</span><span class="pl-k">*</span>)<span class="pl-pds">/</span>i</span>, <span class="pl-smi">(msg)</span> <span class="pl-k">-&gt;</span></td>
      </tr>
      <tr>
        <td id="L69" class="blob-num js-line-number" data-line-number="69"></td>
        <td id="LC69" class="blob-code blob-code-inner js-file-line">    <span class="pl-v"><span class="pl-v">taskName <span class="pl-k">=</span></span></span> msg.match[<span class="pl-c1">3</span>]</td>
      </tr>
      <tr>
        <td id="L70" class="blob-num js-line-number" data-line-number="70"></td>
        <td id="LC70" class="blob-code blob-code-inner js-file-line">    <span class="pl-v"><span class="pl-v">userAcct <span class="pl-k">=</span></span></span> msg.match[<span class="pl-c1">2</span>] <span class="pl-k">if</span> msg.match[<span class="pl-c1">2</span>] <span class="pl-k">!=</span> <span class="pl-c1">undefined</span></td>
      </tr>
      <tr>
        <td id="L71" class="blob-num js-line-number" data-line-number="71"></td>
        <td id="LC71" class="blob-code blob-code-inner js-file-line">    <span class="pl-v"><span class="pl-v">params <span class="pl-k">=</span></span></span> {<span class="pl-v"><span class="pl-v">data:</span></span>{<span class="pl-v"><span class="pl-v">name:</span></span> <span class="pl-s"><span class="pl-pds">"</span><span class="pl-s1"><span class="pl-pse">#{</span>taskName<span class="pl-pse">}</span></span><span class="pl-pds">"</span></span>, <span class="pl-v"><span class="pl-v">workspace:</span></span> <span class="pl-s"><span class="pl-pds">"</span><span class="pl-s1"><span class="pl-pse">#{</span>workspace<span class="pl-pse">}</span></span><span class="pl-pds">"</span></span>}}</td>
      </tr>
      <tr>
        <td id="L72" class="blob-num js-line-number" data-line-number="72"></td>
        <td id="LC72" class="blob-code blob-code-inner js-file-line">    <span class="pl-k">if</span> userAcct</td>
      </tr>
      <tr>
        <td id="L73" class="blob-num js-line-number" data-line-number="73"></td>
        <td id="LC73" class="blob-code blob-code-inner js-file-line">      <span class="pl-v"><span class="pl-v">userAcct <span class="pl-k">=</span></span></span> userAcct.replace <span class="pl-sr"><span class="pl-pds">/</span><span class="pl-k">^</span><span class="pl-c1">\s</span><span class="pl-k">+</span><span class="pl-k">|</span><span class="pl-c1">\s</span><span class="pl-k">+</span><span class="pl-k">$</span><span class="pl-pds">/</span>g</span>, <span class="pl-s"><span class="pl-pds">"</span><span class="pl-pds">"</span></span></td>
      </tr>
      <tr>
        <td id="L74" class="blob-num js-line-number" data-line-number="74"></td>
        <td id="LC74" class="blob-code blob-code-inner js-file-line">      <span class="pl-v"><span class="pl-v">userAcct <span class="pl-k">=</span></span></span> userAcct.replace <span class="pl-s"><span class="pl-pds">"</span>@<span class="pl-pds">"</span></span>, <span class="pl-s"><span class="pl-pds">"</span><span class="pl-pds">"</span></span></td>
      </tr>
      <tr>
        <td id="L75" class="blob-num js-line-number" data-line-number="75"></td>
        <td id="LC75" class="blob-code blob-code-inner js-file-line">      <span class="pl-v"><span class="pl-v">userAcct <span class="pl-k">=</span></span></span> userAcct.toLowerCase()</td>
      </tr>
      <tr>
        <td id="L76" class="blob-num js-line-number" data-line-number="76"></td>
        <td id="LC76" class="blob-code blob-code-inner js-file-line">      getRequest msg, <span class="pl-s"><span class="pl-pds">"</span>/workspaces/<span class="pl-s1"><span class="pl-pse">#{</span>workspace<span class="pl-pse">}</span></span>/users<span class="pl-pds">"</span></span>, <span class="pl-smi">(err, res, body)</span> <span class="pl-k">-&gt;</span></td>
      </tr>
      <tr>
        <td id="L77" class="blob-num js-line-number" data-line-number="77"></td>
        <td id="LC77" class="blob-code blob-code-inner js-file-line">        <span class="pl-v"><span class="pl-v">response <span class="pl-k">=</span></span></span> JSON.parse body</td>
      </tr>
      <tr>
        <td id="L78" class="blob-num js-line-number" data-line-number="78"></td>
        <td id="LC78" class="blob-code blob-code-inner js-file-line">        <span class="pl-v"><span class="pl-v">assignedUser <span class="pl-k">=</span></span></span> <span class="pl-s"><span class="pl-pds">"</span><span class="pl-pds">"</span></span></td>
      </tr>
      <tr>
        <td id="L79" class="blob-num js-line-number" data-line-number="79"></td>
        <td id="LC79" class="blob-code blob-code-inner js-file-line">        <span class="pl-k">for</span> user <span class="pl-k">in</span> response.data</td>
      </tr>
      <tr>
        <td id="L80" class="blob-num js-line-number" data-line-number="80"></td>
        <td id="LC80" class="blob-code blob-code-inner js-file-line">          <span class="pl-v"><span class="pl-v">name <span class="pl-k">=</span></span></span> user.name.toLowerCase().split <span class="pl-s"><span class="pl-pds">"</span> <span class="pl-pds">"</span></span></td>
      </tr>
      <tr>
        <td id="L81" class="blob-num js-line-number" data-line-number="81"></td>
        <td id="LC81" class="blob-code blob-code-inner js-file-line">          <span class="pl-k">if</span> userAcct <span class="pl-k">==</span> name[<span class="pl-c1">0</span>] <span class="pl-k">||</span> userAcct <span class="pl-k">==</span> name[<span class="pl-c1">1</span>]</td>
      </tr>
      <tr>
        <td id="L82" class="blob-num js-line-number" data-line-number="82"></td>
        <td id="LC82" class="blob-code blob-code-inner js-file-line">            <span class="pl-v"><span class="pl-v">assignedUser <span class="pl-k">=</span></span></span> user.id</td>
      </tr>
      <tr>
        <td id="L83" class="blob-num js-line-number" data-line-number="83"></td>
        <td id="LC83" class="blob-code blob-code-inner js-file-line">        <span class="pl-k">if</span> assignedUser <span class="pl-k">!=</span> <span class="pl-s"><span class="pl-pds">"</span><span class="pl-pds">"</span></span></td>
      </tr>
      <tr>
        <td id="L84" class="blob-num js-line-number" data-line-number="84"></td>
        <td id="LC84" class="blob-code blob-code-inner js-file-line">          <span class="pl-v"><span class="pl-v">params <span class="pl-k">=</span></span></span> {<span class="pl-v"><span class="pl-v">data:</span></span>{<span class="pl-v"><span class="pl-v">name:</span></span> <span class="pl-s"><span class="pl-pds">"</span><span class="pl-s1"><span class="pl-pse">#{</span>taskName<span class="pl-pse">}</span></span><span class="pl-pds">"</span></span>, <span class="pl-v"><span class="pl-v">workspace:</span></span> <span class="pl-s"><span class="pl-pds">"</span><span class="pl-s1"><span class="pl-pse">#{</span>workspace<span class="pl-pse">}</span></span><span class="pl-pds">"</span></span>, <span class="pl-v"><span class="pl-v">assignee:</span></span> <span class="pl-s"><span class="pl-pds">"</span><span class="pl-s1"><span class="pl-pse">#{</span>assignedUser<span class="pl-pse">}</span></span><span class="pl-pds">"</span></span>}}</td>
      </tr>
      <tr>
        <td id="L85" class="blob-num js-line-number" data-line-number="85"></td>
        <td id="LC85" class="blob-code blob-code-inner js-file-line">          addTask msg, taskName, <span class="pl-s"><span class="pl-pds">'</span>/tasks<span class="pl-pds">'</span></span>, params, userAcct</td>
      </tr>
      <tr>
        <td id="L86" class="blob-num js-line-number" data-line-number="86"></td>
        <td id="LC86" class="blob-code blob-code-inner js-file-line">        <span class="pl-k">else</span></td>
      </tr>
      <tr>
        <td id="L87" class="blob-num js-line-number" data-line-number="87"></td>
        <td id="LC87" class="blob-code blob-code-inner js-file-line">          msg.send <span class="pl-s"><span class="pl-pds">"</span>Unable to Assign User<span class="pl-pds">"</span></span></td>
      </tr>
      <tr>
        <td id="L88" class="blob-num js-line-number" data-line-number="88"></td>
        <td id="LC88" class="blob-code blob-code-inner js-file-line">          addTask msg, taskName, <span class="pl-s"><span class="pl-pds">'</span>/tasks<span class="pl-pds">'</span></span>, params, <span class="pl-c1">false</span></td>
      </tr>
      <tr>
        <td id="L89" class="blob-num js-line-number" data-line-number="89"></td>
        <td id="LC89" class="blob-code blob-code-inner js-file-line">    <span class="pl-k">else</span></td>
      </tr>
      <tr>
        <td id="L90" class="blob-num js-line-number" data-line-number="90"></td>
        <td id="LC90" class="blob-code blob-code-inner js-file-line">      addTask msg, taskName, <span class="pl-s"><span class="pl-pds">'</span>/tasks<span class="pl-pds">'</span></span>, params, <span class="pl-c1">false</span></td>
      </tr>
      <tr>
        <td id="L91" class="blob-num js-line-number" data-line-number="91"></td>
        <td id="LC91" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L92" class="blob-num js-line-number" data-line-number="92"></td>
        <td id="LC92" class="blob-code blob-code-inner js-file-line"><span class="pl-c"># show task title</span></td>
      </tr>
      <tr>
        <td id="L93" class="blob-num js-line-number" data-line-number="93"></td>
        <td id="LC93" class="blob-code blob-code-inner js-file-line">  robot.hear <span class="pl-sr"><span class="pl-pds">/</span>https:<span class="pl-cce">\/\/</span>app<span class="pl-cce">\.</span>asana<span class="pl-cce">\.</span>com<span class="pl-cce">\/</span>(<span class="pl-c1">\d</span><span class="pl-k">+</span>)<span class="pl-cce">\/</span>(<span class="pl-c1">\d</span><span class="pl-k">+</span>)<span class="pl-cce">\/</span>(<span class="pl-c1">\d</span><span class="pl-k">+</span>)<span class="pl-pds">/</span></span>, <span class="pl-smi">(msg)</span> <span class="pl-k">-&gt;</span></td>
      </tr>
      <tr>
        <td id="L94" class="blob-num js-line-number" data-line-number="94"></td>
        <td id="LC94" class="blob-code blob-code-inner js-file-line">    <span class="pl-v"><span class="pl-v">taskId <span class="pl-k">=</span></span></span> msg.match[<span class="pl-c1">3</span>]</td>
      </tr>
      <tr>
        <td id="L95" class="blob-num js-line-number" data-line-number="95"></td>
        <td id="LC95" class="blob-code blob-code-inner js-file-line">    getRequest msg, <span class="pl-s"><span class="pl-pds">"</span>/tasks/<span class="pl-s1"><span class="pl-pse">#{</span>taskId<span class="pl-pse">}</span></span><span class="pl-pds">"</span></span>, <span class="pl-smi">(err, res, body)</span> <span class="pl-k">-&gt;</span></td>
      </tr>
      <tr>
        <td id="L96" class="blob-num js-line-number" data-line-number="96"></td>
        <td id="LC96" class="blob-code blob-code-inner js-file-line">      <span class="pl-v"><span class="pl-v">response <span class="pl-k">=</span></span></span> JSON.parse body</td>
      </tr>
      <tr>
        <td id="L97" class="blob-num js-line-number" data-line-number="97"></td>
        <td id="LC97" class="blob-code blob-code-inner js-file-line">      <span class="pl-v"><span class="pl-v">name <span class="pl-k">=</span></span></span> response.data.name</td>
      </tr>
      <tr>
        <td id="L98" class="blob-num js-line-number" data-line-number="98"></td>
        <td id="LC98" class="blob-code blob-code-inner js-file-line">      msg.send <span class="pl-s"><span class="pl-pds">"</span><span class="pl-s1"><span class="pl-pse">#{</span>taskId<span class="pl-pse">}</span></span>: <span class="pl-s1"><span class="pl-pse">#{</span>name<span class="pl-pse">}</span></span><span class="pl-pds">"</span></span></td>
      </tr>
      <tr>
        <td id="L99" class="blob-num js-line-number" data-line-number="99"></td>
        <td id="LC99" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L100" class="blob-num js-line-number" data-line-number="100"></td>
        <td id="LC100" class="blob-code blob-code-inner js-file-line"><span class="pl-c"># List all Users</span></td>
      </tr>
      <tr>
        <td id="L101" class="blob-num js-line-number" data-line-number="101"></td>
        <td id="LC101" class="blob-code blob-code-inner js-file-line">  robot.respond <span class="pl-sr"><span class="pl-pds">/</span>(todo users)<span class="pl-pds">/</span>i</span>, <span class="pl-smi">(msg)</span> <span class="pl-k">-&gt;</span></td>
      </tr>
      <tr>
        <td id="L102" class="blob-num js-line-number" data-line-number="102"></td>
        <td id="LC102" class="blob-code blob-code-inner js-file-line">    getRequest msg, <span class="pl-s"><span class="pl-pds">"</span>/workspaces/<span class="pl-s1"><span class="pl-pse">#{</span>workspace<span class="pl-pse">}</span></span>/users<span class="pl-pds">"</span></span>, <span class="pl-smi">(err, res, body)</span> <span class="pl-k">-&gt;</span></td>
      </tr>
      <tr>
        <td id="L103" class="blob-num js-line-number" data-line-number="103"></td>
        <td id="LC103" class="blob-code blob-code-inner js-file-line">      <span class="pl-v"><span class="pl-v">response <span class="pl-k">=</span></span></span> JSON.parse body</td>
      </tr>
      <tr>
        <td id="L104" class="blob-num js-line-number" data-line-number="104"></td>
        <td id="LC104" class="blob-code blob-code-inner js-file-line">      <span class="pl-v"><span class="pl-v">userList <span class="pl-k">=</span></span></span> <span class="pl-s"><span class="pl-pds">"</span><span class="pl-pds">"</span></span></td>
      </tr>
      <tr>
        <td id="L105" class="blob-num js-line-number" data-line-number="105"></td>
        <td id="LC105" class="blob-code blob-code-inner js-file-line">      <span class="pl-k">for</span> user <span class="pl-k">in</span> response.data</td>
      </tr>
      <tr>
        <td id="L106" class="blob-num js-line-number" data-line-number="106"></td>
        <td id="LC106" class="blob-code blob-code-inner js-file-line">        <span class="pl-v"><span class="pl-v">userList <span class="pl-k">+=</span></span></span> <span class="pl-s"><span class="pl-pds">"</span><span class="pl-s1"><span class="pl-pse">#{</span>user.id<span class="pl-pse">}</span></span> : <span class="pl-s1"><span class="pl-pse">#{</span>user.name<span class="pl-pse">}</span></span><span class="pl-cce">\n</span><span class="pl-pds">"</span></span></td>
      </tr>
      <tr>
        <td id="L107" class="blob-num js-line-number" data-line-number="107"></td>
        <td id="LC107" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L108" class="blob-num js-line-number" data-line-number="108"></td>
        <td id="LC108" class="blob-code blob-code-inner js-file-line">      msg.send userList</td>
      </tr>
</tbody></table>

  </div>

</div>

<a href="https://github.com/github/hubot-scripts/blob/master/src/scripts/asana.coffee#jump-to-line" rel="facebox[.linejump]" data-hotkey="l" style="display:none">Jump to Line</a>
<div id="jump-to-line" style="display:none">
  <form accept-charset="UTF-8" action="" class="js-jump-to-line-form" method="get"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="✓"></div>
    <input class="linejump-input js-jump-to-line-field" type="text" placeholder="Jump to line…" autofocus="">
    <button type="submit" class="btn">Go</button>
</form></div>

        </div>

      </div><!-- /.repo-container -->
      <div class="modal-backdrop"></div>
    </div><!-- /.container -->
  </div><!-- /.site -->


    </div><!-- /.wrapper -->

      <div class="container">
  <div class="site-footer" role="contentinfo">
    <ul class="site-footer-links right">
        <li><a href="https://status.github.com/" data-ga-click="Footer, go to status, text:status">Status</a></li>
      <li><a href="https://developer.github.com/" data-ga-click="Footer, go to api, text:api">API</a></li>
      <li><a href="https://training.github.com/" data-ga-click="Footer, go to training, text:training">Training</a></li>
      <li><a href="https://shop.github.com/" data-ga-click="Footer, go to shop, text:shop">Shop</a></li>
        <li><a href="https://github.com/blog" data-ga-click="Footer, go to blog, text:blog">Blog</a></li>
        <li><a href="https://github.com/about" data-ga-click="Footer, go to about, text:about">About</a></li>

    </ul>

    <a href="https://github.com/" aria-label="Homepage">
      <span class="mega-octicon octicon-mark-github" title="GitHub"></span>
</a>
    <ul class="site-footer-links">
      <li>© 2015 <span title="0.08388s from github-fe128-cp1-prd.iad.github.net">GitHub</span>, Inc.</li>
        <li><a href="https://github.com/site/terms" data-ga-click="Footer, go to terms, text:terms">Terms</a></li>
        <li><a href="https://github.com/site/privacy" data-ga-click="Footer, go to privacy, text:privacy">Privacy</a></li>
        <li><a href="https://github.com/security" data-ga-click="Footer, go to security, text:security">Security</a></li>
        <li><a href="https://github.com/contact" data-ga-click="Footer, go to contact, text:contact">Contact</a></li>
    </ul>
  </div>
</div>


    <div class="fullscreen-overlay js-fullscreen-overlay" id="fullscreen_overlay">
  <div class="fullscreen-container js-suggester-container">
    <div class="textarea-wrap">
      <textarea name="fullscreen-contents" id="fullscreen-contents" class="fullscreen-contents js-fullscreen-contents" placeholder=""></textarea>
      <div class="suggester-container">
        <div class="suggester fullscreen-suggester js-suggester js-navigation-container"></div>
      </div>
    </div>
  </div>
  <div class="fullscreen-sidebar">
    <a href="https://github.com/github/hubot-scripts/blob/master/src/scripts/asana.coffee#" class="exit-fullscreen js-exit-fullscreen tooltipped tooltipped-w" aria-label="Exit Zen Mode">
      <span class="mega-octicon octicon-screen-normal"></span>
    </a>
    <a href="https://github.com/github/hubot-scripts/blob/master/src/scripts/asana.coffee#" class="theme-switcher js-theme-switcher tooltipped tooltipped-w" aria-label="Switch themes">
      <span class="octicon octicon-color-mode"></span>
    </a>
  </div>
</div>



    

    <div id="ajax-error-message" class="flash flash-error">
      <span class="octicon octicon-alert"></span>
      <a href="https://github.com/github/hubot-scripts/blob/master/src/scripts/asana.coffee#" class="octicon octicon-x flash-close js-ajax-error-dismiss" aria-label="Dismiss error"></a>
      Something went wrong with that request. Please try again.
    </div>


      <script crossorigin="anonymous" src="./asana_files/frameworks-447ce66a36506ebddc8e84b4e32a77f6062f3d3482e77dd21a77a01f0643ad98.js"></script>
      <script async="async" crossorigin="anonymous" src="./asana_files/index-a5f1d0adc0be764520503e28eb75f4f8ede92312238a209f2531bd3a79b28cb7.js"></script>
      
      
  


    <div class="facebox" id="facebox" style="display:none;">       <div class="facebox-popup">         <div class="facebox-content">         </div>         <button type="button" class="facebox-close js-facebox-close" aria-label="Close modal">           <span class="octicon octicon-remove-close"></span>         </button>       </div>     </div><iframe frameborder="0" scrolling="no" style="border: 0px; display: none; background-color: transparent;"></iframe><div id="GOOGLE_INPUT_CHEXT_FLAG" style="display: none;" input="null" input_stat="{&quot;tlang&quot;:true,&quot;tsbc&quot;:true,&quot;pun&quot;:true,&quot;mk&quot;:false,&quot;ss&quot;:true}"></div></body></html>