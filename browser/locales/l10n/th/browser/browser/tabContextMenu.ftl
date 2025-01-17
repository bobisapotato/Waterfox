# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

reload-tab =
    .label = โหลดแท็บใหม่
    .accesskey = ห
select-all-tabs =
    .label = เลือกแท็บทั้งหมด
    .accesskey = ล
duplicate-tab =
    .label = ทำสำเนาแท็บ
    .accesskey = ท
duplicate-tabs =
    .label = ทำสำเนาแท็บ
    .accesskey = ท
close-tabs-to-the-end =
    .label = ปิดแท็บไปทางขวา
    .accesskey = ข
close-other-tabs =
    .label = ปิดแท็บอื่น ๆ
    .accesskey = น
reload-tabs =
    .label = โหลดแท็บใหม่
    .accesskey = ห
pin-tab =
    .label = ปักหมุดแท็บ
    .accesskey = ก
unpin-tab =
    .label = ถอนหมุดแท็บ
    .accesskey = ถ
pin-selected-tabs =
    .label = ปักหมุดแท็บ
    .accesskey = ก
unpin-selected-tabs =
    .label = ถอนหมุดแท็บ
    .accesskey = ถ
bookmark-selected-tabs =
    .label = เพิ่มที่คั่นหน้าสำหรับแท็บ…
    .accesskey = พ
bookmark-tab =
    .label = เพิ่มที่คั่นหน้าสำหรับแท็บ
    .accesskey = พ
reopen-in-container =
    .label = เปิดใหม่ในการแยกข้อมูล
    .accesskey = ย
move-to-start =
    .label = ย้ายไปยังจุดเริ่มต้น
    .accesskey = ย
move-to-end =
    .label = ย้ายไปยังจุดสิ้นสุด
    .accesskey = ป
move-to-new-window =
    .label = ย้ายไปยังหน้าต่างใหม่
    .accesskey = ม
tab-context-close-multiple-tabs =
    .label = ปิดหลายแท็บ
    .accesskey = ล

## Variables:
##  $tabCount (Number): the number of tabs that are affected by the action.

tab-context-undo-close-tabs =
    .label =
        { $tabCount ->
            [1] เรียกคืนแท็บที่เพิ่งปิด
           *[other] เรียกคืนแท็บที่เพิ่งปิด
        }
    .accesskey = ร
close-tab =
    .label = ปิดแท็บ
    .accesskey = ป
close-tabs =
    .label = ปิดแท็บ
    .accesskey = ป
move-tabs =
    .label = ย้ายแท็บ
    .accesskey = บ
move-tab =
    .label = ย้ายแท็บ
    .accesskey = บ
tab-context-close-tabs =
    .label =
        { $tabCount ->
            [1] ปิดแท็บ
           *[other] ปิดแท็บ
        }
    .accesskey = ป
tab-context-move-tabs =
    .label =
        { $tabCount ->
            [1] ย้ายแท็บ
           *[other] ย้ายแท็บ
        }
    .accesskey = ย
