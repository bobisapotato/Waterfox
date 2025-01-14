/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

"use strict";

const XPI_CONTENT_TYPE = "application/x-xpinstall";
const MSG_INSTALL_ADDON = "WebInstallerInstallAddonFromWebpage";

var { XPCOMUtils } = ChromeUtils.import("resource://gre/modules/XPCOMUtils.jsm");

const { Services } = ChromeUtils.import("resource://gre/modules/Services.jsm");

XPCOMUtils.defineLazyModuleGetters(this, {
  AddonManager: "resource://gre/modules/AddonManager.jsm",
  FileUtils: "resource://gre/modules/FileUtils.jsm",
  OS: "resource://gre/modules/osfile.jsm",
  NetUtil: "resource://gre/modules/NetUtil.jsm",
  StoreHandler: "resource://gre/modules/amStoreHandler.jsm"
});

function amContentHandler() {}

amContentHandler.prototype = {
  /**
   * Handles a new request for an application/x-xpinstall file.
   *
   * @param  aMimetype
   *         The mimetype of the file
   * @param  aContext
   *         The context passed to nsIChannel.asyncOpen
   * @param  aRequest
   *         The nsIRequest dealing with the content
   */
  async handleContent(aMimetype, aContext, aRequest) {
    let uri = aRequest.URI;
    let { loadInfo } = aRequest;
    const { triggeringPrincipal } = loadInfo;
    if (aMimetype != XPI_CONTENT_TYPE) {
      throw Components.Exception("", Cr.NS_ERROR_WONT_HANDLE_CONTENT);
    }
    if (!(aRequest instanceof Ci.nsIChannel)) {
      throw Components.Exception("", Cr.NS_ERROR_WONT_HANDLE_CONTENT);
    }
    aRequest.cancel(Cr.NS_BINDING_ABORTED);

    let browsingContext = loadInfo.targetBrowsingContext;

    let sourceHost;
    let sourceURL;
    try {
      sourceURL = triggeringPrincipal.URI.spec;
      sourceHost = triggeringPrincipal.URI.host;
    } catch (err) {
      // Ignore errors when retrieving the host for the principal (e.g. null principals raise
      // an NS_ERROR_FAILURE when principal.URI.host is accessed).
    }

    let install = {
      uri: uri.spec,
      hash: null,
      name: null,
      icon: null,
      mimetype: XPI_CONTENT_TYPE,
      triggeringPrincipal,
      callbackID: -1,
      method: "link",
      sourceHost,
      sourceURL,
      browsingContext,
    };

    Services.cpmm.sendAsyncMessage(MSG_INSTALL_ADDON, install);
  },

  classID: Components.ID("{7beb3ba8-6ec3-41b4-b67c-da89b8518922}"),
  QueryInterface: ChromeUtils.generateQI([Ci.nsIContentHandler]),

  log(aMsg) {
    let msg = "amContentHandler.js: " + (aMsg.join ? aMsg.join("") : aMsg);
    Services.console.logStringMessage(msg);
    dump(msg + "\n");
  },
};

var EXPORTED_SYMBOLS = ["amContentHandler"];
