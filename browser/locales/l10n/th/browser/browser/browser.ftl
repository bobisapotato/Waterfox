# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.


## The main browser window's title

# These are the default window titles everywhere except macOS. The first two
# attributes are used when the web content opened has no title:
#
# default - "Waterfox"
# private - "Waterfox (Private Browsing)"
#
# The last two are for use when there *is* a content title.
# Variables:
#  $content-title (String): the title of the web content.
browser-main-window =
    .data-title-default = { -brand-full-name }
    .data-title-private = { -brand-full-name } (การเรียกดูแบบส่วนตัว)
    .data-content-title-default = { $content-title } - { -brand-full-name }
    .data-content-title-private = { $content-title } - { -brand-full-name } (การเรียกดูแบบส่วนตัว)
# These are the default window titles on macOS. The first two are for use when
# there is no content title:
#
# "default" - "Waterfox"
# "private" - "Waterfox - (Private Browsing)"
#
# The last two are for use when there *is* a content title.
# Do not use the brand name in the last two attributes, as we do on non-macOS.
#
# Also note the other subtle difference here: we use a `-` to separate the
# brand name from `(Private Browsing)`, which does not happen on other OSes.
#
# Variables:
#  $content-title (String): the title of the web content.
browser-main-window-mac =
    .data-title-default = { -brand-full-name }
    .data-title-private = { -brand-full-name } - (การเรียกดูแบบส่วนตัว)
    .data-content-title-default = { $content-title }
    .data-content-title-private = { $content-title } - (การเรียกดูแบบส่วนตัว)
# This gets set as the initial title, and is overridden as soon as we start
# updating the titlebar based on loaded tabs or private browsing state.
# This should match the `data-title-default` attribute in both
# `browser-main-window` and `browser-main-window-mac`.
browser-main-window-title = { -brand-full-name }

##

urlbar-identity-button =
    .aria-label = ดูข้อมูลไซต์

## Tooltips for images appearing in the address bar

urlbar-services-notification-anchor =
    .tooltiptext = เปิดแผงข้อความการติดตั้ง
urlbar-web-notification-anchor =
    .tooltiptext = เลือกว่าคุณสามารถรับการแจ้งเตือนจากไซต์ได้หรือไม่
urlbar-midi-notification-anchor =
    .tooltiptext = เปิดแผง MIDI
urlbar-eme-notification-anchor =
    .tooltiptext = จัดการการใช้ซอฟต์แวร์ DRM
urlbar-web-authn-anchor =
    .tooltiptext = เปิดแผง ​Web Authentication
urlbar-canvas-notification-anchor =
    .tooltiptext = จัดการสิทธิอนุญาตการส่งออกผืนผ้าใบ
urlbar-web-rtc-share-microphone-notification-anchor =
    .tooltiptext = จัดการการแบ่งปันไมโครโฟนของคุณกับไซต์
urlbar-default-notification-anchor =
    .tooltiptext = เปิดแผงข้อความ
urlbar-geolocation-notification-anchor =
    .tooltiptext = เปิดแผงคำขอตำแหน่งที่ตั้ง
urlbar-xr-notification-anchor =
    .tooltiptext = เปิดแผงสิทธิอนุญาตความจริงเสมือน
urlbar-storage-access-anchor =
    .tooltiptext = เปิดแผงสิทธิอนุญาตกิจกรรมการเรียกดู
urlbar-translate-notification-anchor =
    .tooltiptext = แปลหน้านี้
urlbar-web-rtc-share-screen-notification-anchor =
    .tooltiptext = จัดการการแบ่งปันหน้าต่างหรือหน้าจอของคุณกับไซต์
urlbar-indexed-db-notification-anchor =
    .tooltiptext = เปิดแผงข้อความที่เก็บข้อมูลออฟไลน์
urlbar-password-notification-anchor =
    .tooltiptext = เปิดแผงข้อความบันทึกรหัสผ่าน
urlbar-translated-notification-anchor =
    .tooltiptext = จัดการการแปลหน้านี้
urlbar-plugins-notification-anchor =
    .tooltiptext = จัดการการใช้ปลั๊กอิน
urlbar-web-rtc-share-devices-notification-anchor =
    .tooltiptext = จัดการการแบ่งปันกล้องและ/หรือไมโครโฟนของคุณกับไซต์
urlbar-autoplay-notification-anchor =
    .tooltiptext = เปิดแผงการเล่นอัตโนมัติ
urlbar-persistent-storage-notification-anchor =
    .tooltiptext = จัดเก็บข้อมูลในที่เก็บข้อมูลถาวร
urlbar-addons-notification-anchor =
    .tooltiptext = เปิดแผงข้อความการติดตั้งส่วนเสริม
urlbar-tip-help-icon =
    .title = รับความช่วยเหลือ
urlbar-search-tips-confirm = ตกลง เข้าใจแล้ว
# Read out before Urlbar Tip text content so screenreader users know the
# subsequent text is a tip offered by the browser. It should end in a colon or
# localized equivalent.
urlbar-tip-icon-description =
    .alt = เคล็ดลับ:

## Prompts users to use the Urlbar when they open a new tab or visit the
## homepage of their default search engine.
## Variables:
##  $engineName (String): The name of the user's default search engine. e.g. "Google" or "DuckDuckGo".

urlbar-search-tips-onboard = พิมพ์น้อยลง ค้นหามากขึ้น: ค้นหา { $engineName } โดยตรงจากแถบที่อยู่ของคุณ
urlbar-search-tips-redirect-2 = เริ่มการค้นหาของคุณในแถบที่อยู่เพื่อดูข้อเสนอแนะจาก { $engineName } และประวัติการเรียกดูของคุณ

## Local search mode indicator labels in the urlbar

urlbar-search-mode-bookmarks = ที่คั่นหน้า
urlbar-search-mode-tabs = แท็บ
urlbar-search-mode-history = ประวัติ

##

urlbar-geolocation-blocked =
    .tooltiptext = คุณได้ปิดกั้นข้อมูลตำแหน่งที่ตั้งสำหรับเว็บไซต์นี้
urlbar-xr-blocked =
    .tooltiptext = คุณได้ปิดกั้นการเข้าถึงอุปกรณ์ความจริงเสมือนสำหรับเว็บไซต์นี้
urlbar-web-notifications-blocked =
    .tooltiptext = คุณได้ปิดกั้นการแจ้งเตือนสำหรับเว็บไซต์นี้
urlbar-camera-blocked =
    .tooltiptext = คุณได้ปิดกั้นกล้องของคุณสำหรับเว็บไซต์นี้
urlbar-microphone-blocked =
    .tooltiptext = คุณได้ปิดกั้นไมโครโฟนของคุณสำหรับเว็บไซต์นี้
urlbar-screen-blocked =
    .tooltiptext = คุณได้ปิดกั้นเว็บไซต์นี้จากการแบ่งปันหน้าจอของคุณ
urlbar-persistent-storage-blocked =
    .tooltiptext = คุณได้ปิดกั้นที่เก็บข้อมูลถาวรสำหรับเว็บไซต์นี้
urlbar-popup-blocked =
    .tooltiptext = คุณได้ปิดกั้นป๊อปอัปสำหรับเว็บไซต์นี้
urlbar-autoplay-media-blocked =
    .tooltiptext = คุณได้ปิดกั้นการเล่นสื่อพร้อมเสียงโดยอัตโนมัติสำหรับเว็บไซต์นี้
urlbar-canvas-blocked =
    .tooltiptext = คุณได้ปิดกั้นการส่งออกข้อมูลผืนผ้าใบสำหรับเว็บไซต์นี้
urlbar-midi-blocked =
    .tooltiptext = คุณได้ปิดกั้นการเข้าถึง MIDI สำหรับเว็บไซต์นี้
urlbar-install-blocked =
    .tooltiptext = คุณได้ปิดกั้นการติดตั้งส่วนเสริมสำหรับเว็บไซต์นี้
# Variables
#   $shortcut (String) - A keyboard shortcut for the edit bookmark command.
urlbar-star-edit-bookmark =
    .tooltiptext = แก้ไขที่คั่นหน้านี้ ({ $shortcut })
# Variables
#   $shortcut (String) - A keyboard shortcut for the add bookmark command.
urlbar-star-add-bookmark =
    .tooltiptext = เพิ่มที่คั่นหน้าสำหรับหน้านี้ ({ $shortcut })

## Page Action Context Menu

page-action-add-to-urlbar =
    .label = เพิ่มลงในแถบที่อยู่
page-action-manage-extension =
    .label = จัดการส่วนขยาย…
page-action-remove-from-urlbar =
    .label = เอาออกจากแถบที่อยู่
page-action-remove-extension =
    .label = เอาส่วนขยายออก

## Auto-hide Context Menu

full-screen-autohide =
    .label = ซ่อนแถบเครื่องมือ
    .accesskey = น
full-screen-exit =
    .label = ออกจากโหมดเต็มหน้าจอ
    .accesskey = จ

## Search Engine selection buttons (one-offs)

# This string prompts the user to use the list of one-click search engines in
# the Urlbar and searchbar.
search-one-offs-with-title = คราวนี้ค้นหาด้วย:
# This string won't wrap, so if the translated string is longer,
# consider translating it as if it said only "Search Settings".
search-one-offs-change-settings-button =
    .label = เปลี่ยนการตั้งค่าการค้นหา
search-one-offs-change-settings-compact-button =
    .tooltiptext = เปลี่ยนการตั้งค่าการค้นหา
search-one-offs-context-open-new-tab =
    .label = ค้นหาในแท็บใหม่
    .accesskey = ค
search-one-offs-context-set-as-default =
    .label = ตั้งเป็นเครื่องมือค้นหาเริ่มต้น
    .accesskey = ต
search-one-offs-context-set-as-default-private =
    .label = ตั้งเป็นเครื่องมือค้นหาเริ่มต้นสำหรับหน้าต่างส่วนตัว
    .accesskey = ส
# Search engine one-off buttons with an @alias shortcut/keyword.
# Variables:
#  $engineName (String): The name of the engine.
#  $alias (String): The @alias shortcut/keyword.
search-one-offs-engine-with-alias =
    .tooltiptext = { $engineName } ({ $alias })

## Local search mode one-off buttons
## Variables:
##  $restrict (String): The restriction token corresponding to the search mode.
##    Restriction tokens are special characters users can type in the urlbar to
##    restrict their searches to certain sources (e.g., "*" to search only
##    bookmarks).

search-one-offs-bookmarks =
    .tooltiptext = ที่คั่นหน้า ({ $restrict })
search-one-offs-tabs =
    .tooltiptext = แท็บ ({ $restrict })
search-one-offs-history =
    .tooltiptext = ประวัติ ({ $restrict })

## Bookmark Panel

bookmark-panel-show-editor-checkbox =
    .label = แสดงตัวแก้ไขเมื่อบันทึก
    .accesskey = ส
bookmark-panel-done-button =
    .label = เสร็จสิ้น
# Width of the bookmark panel.
# Should be large enough to fully display the Done and
# Cancel/Remove Bookmark buttons.
bookmark-panel =
    .style = min-width: 23em

## Identity Panel

identity-connection-not-secure = การเชื่อมต่อไม่ปลอดภัย
identity-connection-secure = การเชื่อมต่อปลอดภัย
identity-connection-internal = นี่คือหน้า { -brand-short-name } ที่ปลอดภัย
identity-connection-file = หน้านี้ถูกจัดเก็บไว้ในคอมพิวเตอร์ของคุณ
identity-extension-page = หน้านี้ถูกโหลดจากส่วนขยาย
identity-active-blocked = { -brand-short-name } ได้ปิดกั้นบางส่วนของหน้านี้ที่ไม่ปลอดภัย
identity-custom-root = การเชื่อมต่อถูกตรวจสอบโดยผู้ออกใบรับรองที่ Mozilla ไม่รู้จัก
identity-passive-loaded = บางส่วนของหน้านี้ไม่ปลอดภัย (อย่างเช่น ภาพ)
identity-active-loaded = คุณได้ปิดใช้งานการป้องกันในหน้านี้
identity-weak-encryption = หน้านี้ใช้การเข้ารหัสที่อ่อนแอ
identity-insecure-login-forms = ข้อมูลการเข้าสู่ระบบที่ใส่ไว้บนหน้านี้อาจถูกบุกรุกได้
identity-permissions =
    .value = สิทธิอนุญาต
identity-permissions-reload-hint = คุณอาจจำเป็นต้องโหลดหน้าใหม่เพื่อให้การเปลี่ยนแปลงมีผล
identity-permissions-empty = คุณไม่ได้อนุญาตไซต์นี้ด้วยสิทธิอนุญาตพิเศษใด ๆ
identity-clear-site-data =
    .label = ล้างคุกกี้และข้อมูลไซต์…
identity-connection-not-secure-security-view = คุณไม่ได้เชื่อมต่ออย่างปลอดภัยไปยังไซต์นี้
identity-connection-verified = คุณได้เชื่อมต่ออย่างปลอดภัยไปยังไซต์นี้
identity-ev-owner-label = ออกใบรับรองให้กับ:
identity-description-custom-root = Waterfox ไม่รู้จักผู้ออกใบรับรองนี้ ซึ่งอาจถูกเพิ่มจากระบบปฏิบัติการของคุณหรือโดยผู้ดูแลระบบ <label data-l10n-name="link">เรียนรู้เพิ่มเติม</label>
identity-remove-cert-exception =
    .label = เอาข้อยกเว้นออก
    .accesskey = อ
identity-description-insecure = การเชื่อมต่อของคุณไปยังไซต์นี้ไม่เป็นส่วนตัว ข้อมูลที่คุณแบ่งปันกับไซต์นี้สามารถดูได้โดยผู้อื่น (เช่น รหัสผ่าน, ข้อความ, บัตรเครดิต ฯลฯ)
identity-description-insecure-login-forms = ข้อมูลการเข้าสู่ระบบที่คุณป้อนในหน้านี้ไม่ปลอดภัยและอาจถูกบุกรุกได้
identity-description-weak-cipher-intro = การเชื่อมต่อของคุณไปยังเว็บไซต์นี้ใช้การเข้ารหัสที่อ่อนแอและไม่เป็นส่วนตัว
identity-description-weak-cipher-risk = ผู้คนอื่น ๆ สามารถดูข้อมูลของคุณหรือเปลี่ยนแปลงลักษณะการทำงานของเว็บไซต์
identity-description-active-blocked = { -brand-short-name } ได้ปิดกั้นบางส่วนของหน้านี้ที่ไม่ปลอดภัย <label data-l10n-name="link">เรียนรู้เพิ่มเติม</label>
identity-description-passive-loaded = การเชื่อมต่อของคุณไม่เป็นส่วนตัวและข้อมูลที่คุณแบ่งปันกับเว็บไซต์คนอื่นสามารถดูได้
identity-description-passive-loaded-insecure = เว็บไซต์นี้มีเนื้อหาที่ไม่ปลอดภัย (อย่างเช่น ภาพ) <label data-l10n-name="link">เรียนรู้เพิ่มเติม</label>
identity-description-passive-loaded-mixed = ถึงแม้ว่า { -brand-short-name } ได้ปิดกั้นเนื้อหาบางส่วน แต่ก็ยังคงมีเนื้อหาในหน้าที่ไม่ปลอดภัย (อย่างเช่น ภาพ) <label data-l10n-name="link">เรียนรู้เพิ่มเติม</label>
identity-description-active-loaded = เว็บไซต์นี้ประกอบด้วยเนื้อหาที่เชื่อถือไม่ได้ (เช่น สคริปต์) และการเชื่อมต่อไปยังไซต์ก็ไม่เป็นส่วนตัว
identity-description-active-loaded-insecure = ข้อมูลที่คุณแบ่งปันกับไซต์นี้สามารถดูได้โดยผู้อื่น (เช่น รหัสผ่าน, ข้อความ, บัตรเครดิต ฯลฯ)
identity-learn-more =
    .value = เรียนรู้เพิ่มเติม
identity-disable-mixed-content-blocking =
    .label = ปิดใช้งานการป้องกันในตอนนี้
    .accesskey = ป
identity-enable-mixed-content-blocking =
    .label = เปิดใช้งานการป้องกัน
    .accesskey = ป
identity-more-info-link-text =
    .label = ข้อมูลเพิ่มเติม

## Window controls

browser-window-minimize-button =
    .tooltiptext = ย่อ
browser-window-maximize-button =
    .tooltiptext = ขยาย
browser-window-restore-down-button =
    .tooltiptext = คืนค่าลงล่าง
browser-window-close-button =
    .tooltiptext = ปิด

## WebRTC Pop-up notifications

popup-select-camera =
    .value = กล้องที่แบ่งปัน:
    .accesskey = ก
popup-select-microphone =
    .value = ไมโครโฟนที่แบ่งปัน:
    .accesskey = ม
popup-all-windows-shared = หน้าต่างที่ปรากฏอยู่ทั้งหมดบนหน้าจอของคุณจะถูกแบ่งปัน
popup-screen-sharing-not-now =
    .label = ไม่ใช่ตอนนี้
    .accesskey = w
popup-screen-sharing-never =
    .label = ไม่อนุญาตเสมอ
    .accesskey = ม
popup-silence-notifications-checkbox = ปิดใช้งานการแจ้งเตือนจาก { -brand-short-name } ขณะที่แบ่งปัน
popup-silence-notifications-checkbox-warning = { -brand-short-name } จะไม่แสดงการแจ้งเตือนขณะที่คุณกำลังแบ่งปัน

## WebRTC window or screen share tab switch warning

sharing-warning-window = คุณกำลังแบ่งปัน { -brand-short-name } คนอื่น ๆ สามารถเห็นได้เมื่อคุณสลับไปยังแท็บใหม่
sharing-warning-screen = คุณกำลังแบ่งปันทั้งหน้าจอของคุณ คนอื่น ๆ สามารถเห็นได้เมื่อคุณสลับไปยังแท็บใหม่
sharing-warning-proceed-to-tab =
    .label = ไปยังแท็บต่อ
sharing-warning-disable-for-session =
    .label = ปิดใช้งานการป้องกันการแบ่งปันในวาระนี้

## DevTools F12 popup

enable-devtools-popup-description = หากต้องการใช้ทางลัด F12 ให้เปิด DevTools ก่อนผ่านเมนู Web Developer

## URL Bar

urlbar-default-placeholder =
    .defaultPlaceholder = ค้นหาหรือป้อนที่อยู่
# This placeholder is used when not in search mode and the user's default search
# engine is unknown.
urlbar-placeholder =
    .placeholder = ค้นหาหรือป้อนที่อยู่
# This placeholder is used in search mode with search engines that search the
# entire web.
# Variables
#  $name (String): the name of a search engine that searches the entire Web
#  (e.g. Google).
urlbar-placeholder-search-mode-web-2 =
    .placeholder = ค้นหาเว็บ
    .aria-label = ค้นหาด้วย { $name }
# This placeholder is used in search mode with search engines that search a
# specific site (e.g., Amazon).
# Variables
#  $name (String): the name of a search engine that searches a specific site
#  (e.g. Amazon).
urlbar-placeholder-search-mode-other-engine =
    .placeholder = ป้อนคำค้นหา
    .aria-label = ค้นหา { $name }
# This placeholder is used when searching bookmarks.
urlbar-placeholder-search-mode-other-bookmarks =
    .placeholder = ป้อนคำค้นหา
    .aria-label = ค้นหาที่คั่นหน้า
# This placeholder is used when searching history.
urlbar-placeholder-search-mode-other-history =
    .placeholder = ป้อนคำค้นหา
    .aria-label = ค้นหาประวัติ
# This placeholder is used when searching open tabs.
urlbar-placeholder-search-mode-other-tabs =
    .placeholder = ป้อนคำค้นหา
    .aria-label = ค้นหาแท็บ
# Variables
#  $name (String): the name of the user's default search engine
urlbar-placeholder-with-name =
    .placeholder = ค้นหาด้วย { $name } หรือใส่ที่อยู่
urlbar-remote-control-notification-anchor =
    .tooltiptext = เบราว์เซอร์อยู่ภายใต้การควบคุมระยะไกล
urlbar-permissions-granted =
    .tooltiptext = คุณได้อนุญาตไซต์นี้ด้วยสิทธิเพิ่มเติม
urlbar-switch-to-tab =
    .value = สลับไปยังแท็บ:
# Used to indicate that a selected autocomplete entry is provided by an extension.
urlbar-extension =
    .value = ส่วนขยาย:
urlbar-go-button =
    .tooltiptext = ไปยังที่อยู่ในแถบตำแหน่งที่ตั้ง
urlbar-page-action-button =
    .tooltiptext = การกระทำหน้า
urlbar-pocket-button =
    .tooltiptext = บันทึกไปยัง { -pocket-brand-name }

## Full Screen and Pointer Lock UI

# Please ensure that the domain stays in the `<span data-l10n-name="domain">` markup.
# Variables
#  $domain (String): the domain that is full screen, e.g. "mozilla.org"
fullscreen-warning-domain = <span data-l10n-name="domain">{ $domain }</span> เต็มหน้าจออยู่
fullscreen-warning-no-domain = เอกสารนี้เต็มหน้าจออยู่
fullscreen-exit-button = ออกจากภาพเต็มหน้าจอ (Esc)
# "esc" is lowercase on mac keyboards, but uppercase elsewhere.
fullscreen-exit-mac-button = ออกจากภาพเต็มหน้าจอ (esc)
# Please ensure that the domain stays in the `<span data-l10n-name="domain">` markup.
# Variables
#  $domain (String): the domain that is using pointer-lock, e.g. "mozilla.org"
pointerlock-warning-domain = <span data-l10n-name="domain">{ $domain }</span> ได้ควบคุมตัวชี้ของคุณ กด Esc เพื่อดึงการควบคุมคืน
pointerlock-warning-no-domain = เอกสารชิ้นนี้ได้ควบคุมตัวชี้ของคุณ กด Esc เพื่อดึงการควบคุมคืน
