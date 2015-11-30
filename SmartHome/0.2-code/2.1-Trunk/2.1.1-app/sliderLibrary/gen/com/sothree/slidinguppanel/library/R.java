/* AUTO-GENERATED FILE.  DO NOT MODIFY.
 *
 * This class was automatically generated by the
 * aapt tool from the resource data it found.  It
 * should not be modified by hand.
 */

package com.sothree.slidinguppanel.library;

public final class R {
    public static final class attr {
        /** <p>Must be a floating point value, such as "<code>1.2</code>".
<p>This may also be a reference to a resource (in the form
"<code>@[<i>package</i>:]<i>type</i>:<i>name</i></code>") or
theme attribute (in the form
"<code>?[<i>package</i>:][<i>type</i>:]<i>name</i></code>")
containing a value of this type.
         */
        public static int anchorPoint=0x7f010007;
        /** <p>Must be a reference to another resource, in the form "<code>@[+][<i>package</i>:]<i>type</i>:<i>name</i></code>"
or to a theme attribute in the form "<code>?[<i>package</i>:][<i>type</i>:]<i>name</i></code>".
         */
        public static int dragView=0x7f010005;
        /** <p>Must be a color value, in the form of "<code>#<i>rgb</i></code>", "<code>#<i>argb</i></code>",
"<code>#<i>rrggbb</i></code>", or "<code>#<i>aarrggbb</i></code>".
<p>This may also be a reference to a resource (in the form
"<code>@[<i>package</i>:]<i>type</i>:<i>name</i></code>") or
theme attribute (in the form
"<code>?[<i>package</i>:][<i>type</i>:]<i>name</i></code>")
containing a value of this type.
         */
        public static int fadeColor=0x7f010003;
        /** <p>Must be an integer value, such as "<code>100</code>".
<p>This may also be a reference to a resource (in the form
"<code>@[<i>package</i>:]<i>type</i>:<i>name</i></code>") or
theme attribute (in the form
"<code>?[<i>package</i>:][<i>type</i>:]<i>name</i></code>")
containing a value of this type.
         */
        public static int flingVelocity=0x7f010004;
        /** <p>Must be one of the following constant values.</p>
<table>
<colgroup align="left" />
<colgroup align="left" />
<colgroup align="left" />
<tr><th>Constant</th><th>Value</th><th>Description</th></tr>
<tr><td><code>expanded</code></td><td>0</td><td></td></tr>
<tr><td><code>collapsed</code></td><td>1</td><td></td></tr>
<tr><td><code>anchored</code></td><td>2</td><td></td></tr>
<tr><td><code>hidden</code></td><td>3</td><td></td></tr>
</table>
         */
        public static int initialState=0x7f010008;
        /** <p>Must be a boolean value, either "<code>true</code>" or "<code>false</code>".
<p>This may also be a reference to a resource (in the form
"<code>@[<i>package</i>:]<i>type</i>:<i>name</i></code>") or
theme attribute (in the form
"<code>?[<i>package</i>:][<i>type</i>:]<i>name</i></code>")
containing a value of this type.
         */
        public static int overlay=0x7f010006;
        /** <p>Must be a dimension value, which is a floating point number appended with a unit such as "<code>14.5sp</code>".
Available units are: px (pixels), dp (density-independent pixels), sp (scaled pixels based on preferred font size),
in (inches), mm (millimeters).
<p>This may also be a reference to a resource (in the form
"<code>@[<i>package</i>:]<i>type</i>:<i>name</i></code>") or
theme attribute (in the form
"<code>?[<i>package</i>:][<i>type</i>:]<i>name</i></code>")
containing a value of this type.
         */
        public static int panelHeight=0x7f010000;
        /** <p>Must be a dimension value, which is a floating point number appended with a unit such as "<code>14.5sp</code>".
Available units are: px (pixels), dp (density-independent pixels), sp (scaled pixels based on preferred font size),
in (inches), mm (millimeters).
<p>This may also be a reference to a resource (in the form
"<code>@[<i>package</i>:]<i>type</i>:<i>name</i></code>") or
theme attribute (in the form
"<code>?[<i>package</i>:][<i>type</i>:]<i>name</i></code>")
containing a value of this type.
         */
        public static int paralaxOffset=0x7f010002;
        /** <p>Must be a dimension value, which is a floating point number appended with a unit such as "<code>14.5sp</code>".
Available units are: px (pixels), dp (density-independent pixels), sp (scaled pixels based on preferred font size),
in (inches), mm (millimeters).
<p>This may also be a reference to a resource (in the form
"<code>@[<i>package</i>:]<i>type</i>:<i>name</i></code>") or
theme attribute (in the form
"<code>?[<i>package</i>:][<i>type</i>:]<i>name</i></code>")
containing a value of this type.
         */
        public static int shadowHeight=0x7f010001;
    }
    public static final class drawable {
        public static int above_shadow=0x7f020000;
        public static int below_shadow=0x7f020001;
        public static int ic_launcher=0x7f020002;
        public static int shadow=0x7f020003;
    }
    public static final class id {
        public static int anchored=0x7f050002;
        public static int collapsed=0x7f050001;
        public static int expanded=0x7f050000;
        public static int hidden=0x7f050003;
        public static int iv_background=0x7f050004;
        public static int iv_icon=0x7f05000a;
        public static int iv_shadow=0x7f050005;
        public static int layout_left_menu=0x7f050007;
        public static int layout_right_menu=0x7f050009;
        public static int sv_left_menu=0x7f050006;
        public static int sv_right_menu=0x7f050008;
        public static int tv_title=0x7f05000b;
    }
    public static final class layout {
        public static int residemenu=0x7f030000;
        public static int residemenu_item=0x7f030001;
    }
    public static final class string {
        public static int app_name=0x7f040000;
    }
    public static final class styleable {
        /** Attributes that can be used with a SlidingUpPanelLayout.
           <p>Includes the following attributes:</p>
           <table>
           <colgroup align="left" />
           <colgroup align="left" />
           <tr><th>Attribute</th><th>Description</th></tr>
           <tr><td><code>{@link #SlidingUpPanelLayout_anchorPoint com.sothree.slidinguppanel.library:anchorPoint}</code></td><td></td></tr>
           <tr><td><code>{@link #SlidingUpPanelLayout_dragView com.sothree.slidinguppanel.library:dragView}</code></td><td></td></tr>
           <tr><td><code>{@link #SlidingUpPanelLayout_fadeColor com.sothree.slidinguppanel.library:fadeColor}</code></td><td></td></tr>
           <tr><td><code>{@link #SlidingUpPanelLayout_flingVelocity com.sothree.slidinguppanel.library:flingVelocity}</code></td><td></td></tr>
           <tr><td><code>{@link #SlidingUpPanelLayout_initialState com.sothree.slidinguppanel.library:initialState}</code></td><td></td></tr>
           <tr><td><code>{@link #SlidingUpPanelLayout_overlay com.sothree.slidinguppanel.library:overlay}</code></td><td></td></tr>
           <tr><td><code>{@link #SlidingUpPanelLayout_panelHeight com.sothree.slidinguppanel.library:panelHeight}</code></td><td></td></tr>
           <tr><td><code>{@link #SlidingUpPanelLayout_paralaxOffset com.sothree.slidinguppanel.library:paralaxOffset}</code></td><td></td></tr>
           <tr><td><code>{@link #SlidingUpPanelLayout_shadowHeight com.sothree.slidinguppanel.library:shadowHeight}</code></td><td></td></tr>
           </table>
           @see #SlidingUpPanelLayout_anchorPoint
           @see #SlidingUpPanelLayout_dragView
           @see #SlidingUpPanelLayout_fadeColor
           @see #SlidingUpPanelLayout_flingVelocity
           @see #SlidingUpPanelLayout_initialState
           @see #SlidingUpPanelLayout_overlay
           @see #SlidingUpPanelLayout_panelHeight
           @see #SlidingUpPanelLayout_paralaxOffset
           @see #SlidingUpPanelLayout_shadowHeight
         */
        public static final int[] SlidingUpPanelLayout = {
            0x7f010000, 0x7f010001, 0x7f010002, 0x7f010003,
            0x7f010004, 0x7f010005, 0x7f010006, 0x7f010007,
            0x7f010008
        };
        /**
          <p>This symbol is the offset where the {@link com.sothree.slidinguppanel.library.R.attr#anchorPoint}
          attribute's value can be found in the {@link #SlidingUpPanelLayout} array.


          <p>Must be a floating point value, such as "<code>1.2</code>".
<p>This may also be a reference to a resource (in the form
"<code>@[<i>package</i>:]<i>type</i>:<i>name</i></code>") or
theme attribute (in the form
"<code>?[<i>package</i>:][<i>type</i>:]<i>name</i></code>")
containing a value of this type.
          @attr name com.sothree.slidinguppanel.library:anchorPoint
        */
        public static final int SlidingUpPanelLayout_anchorPoint = 7;
        /**
          <p>This symbol is the offset where the {@link com.sothree.slidinguppanel.library.R.attr#dragView}
          attribute's value can be found in the {@link #SlidingUpPanelLayout} array.


          <p>Must be a reference to another resource, in the form "<code>@[+][<i>package</i>:]<i>type</i>:<i>name</i></code>"
or to a theme attribute in the form "<code>?[<i>package</i>:][<i>type</i>:]<i>name</i></code>".
          @attr name com.sothree.slidinguppanel.library:dragView
        */
        public static final int SlidingUpPanelLayout_dragView = 5;
        /**
          <p>This symbol is the offset where the {@link com.sothree.slidinguppanel.library.R.attr#fadeColor}
          attribute's value can be found in the {@link #SlidingUpPanelLayout} array.


          <p>Must be a color value, in the form of "<code>#<i>rgb</i></code>", "<code>#<i>argb</i></code>",
"<code>#<i>rrggbb</i></code>", or "<code>#<i>aarrggbb</i></code>".
<p>This may also be a reference to a resource (in the form
"<code>@[<i>package</i>:]<i>type</i>:<i>name</i></code>") or
theme attribute (in the form
"<code>?[<i>package</i>:][<i>type</i>:]<i>name</i></code>")
containing a value of this type.
          @attr name com.sothree.slidinguppanel.library:fadeColor
        */
        public static final int SlidingUpPanelLayout_fadeColor = 3;
        /**
          <p>This symbol is the offset where the {@link com.sothree.slidinguppanel.library.R.attr#flingVelocity}
          attribute's value can be found in the {@link #SlidingUpPanelLayout} array.


          <p>Must be an integer value, such as "<code>100</code>".
<p>This may also be a reference to a resource (in the form
"<code>@[<i>package</i>:]<i>type</i>:<i>name</i></code>") or
theme attribute (in the form
"<code>?[<i>package</i>:][<i>type</i>:]<i>name</i></code>")
containing a value of this type.
          @attr name com.sothree.slidinguppanel.library:flingVelocity
        */
        public static final int SlidingUpPanelLayout_flingVelocity = 4;
        /**
          <p>This symbol is the offset where the {@link com.sothree.slidinguppanel.library.R.attr#initialState}
          attribute's value can be found in the {@link #SlidingUpPanelLayout} array.


          <p>Must be one of the following constant values.</p>
<table>
<colgroup align="left" />
<colgroup align="left" />
<colgroup align="left" />
<tr><th>Constant</th><th>Value</th><th>Description</th></tr>
<tr><td><code>expanded</code></td><td>0</td><td></td></tr>
<tr><td><code>collapsed</code></td><td>1</td><td></td></tr>
<tr><td><code>anchored</code></td><td>2</td><td></td></tr>
<tr><td><code>hidden</code></td><td>3</td><td></td></tr>
</table>
          @attr name com.sothree.slidinguppanel.library:initialState
        */
        public static final int SlidingUpPanelLayout_initialState = 8;
        /**
          <p>This symbol is the offset where the {@link com.sothree.slidinguppanel.library.R.attr#overlay}
          attribute's value can be found in the {@link #SlidingUpPanelLayout} array.


          <p>Must be a boolean value, either "<code>true</code>" or "<code>false</code>".
<p>This may also be a reference to a resource (in the form
"<code>@[<i>package</i>:]<i>type</i>:<i>name</i></code>") or
theme attribute (in the form
"<code>?[<i>package</i>:][<i>type</i>:]<i>name</i></code>")
containing a value of this type.
          @attr name com.sothree.slidinguppanel.library:overlay
        */
        public static final int SlidingUpPanelLayout_overlay = 6;
        /**
          <p>This symbol is the offset where the {@link com.sothree.slidinguppanel.library.R.attr#panelHeight}
          attribute's value can be found in the {@link #SlidingUpPanelLayout} array.


          <p>Must be a dimension value, which is a floating point number appended with a unit such as "<code>14.5sp</code>".
Available units are: px (pixels), dp (density-independent pixels), sp (scaled pixels based on preferred font size),
in (inches), mm (millimeters).
<p>This may also be a reference to a resource (in the form
"<code>@[<i>package</i>:]<i>type</i>:<i>name</i></code>") or
theme attribute (in the form
"<code>?[<i>package</i>:][<i>type</i>:]<i>name</i></code>")
containing a value of this type.
          @attr name com.sothree.slidinguppanel.library:panelHeight
        */
        public static final int SlidingUpPanelLayout_panelHeight = 0;
        /**
          <p>This symbol is the offset where the {@link com.sothree.slidinguppanel.library.R.attr#paralaxOffset}
          attribute's value can be found in the {@link #SlidingUpPanelLayout} array.


          <p>Must be a dimension value, which is a floating point number appended with a unit such as "<code>14.5sp</code>".
Available units are: px (pixels), dp (density-independent pixels), sp (scaled pixels based on preferred font size),
in (inches), mm (millimeters).
<p>This may also be a reference to a resource (in the form
"<code>@[<i>package</i>:]<i>type</i>:<i>name</i></code>") or
theme attribute (in the form
"<code>?[<i>package</i>:][<i>type</i>:]<i>name</i></code>")
containing a value of this type.
          @attr name com.sothree.slidinguppanel.library:paralaxOffset
        */
        public static final int SlidingUpPanelLayout_paralaxOffset = 2;
        /**
          <p>This symbol is the offset where the {@link com.sothree.slidinguppanel.library.R.attr#shadowHeight}
          attribute's value can be found in the {@link #SlidingUpPanelLayout} array.


          <p>Must be a dimension value, which is a floating point number appended with a unit such as "<code>14.5sp</code>".
Available units are: px (pixels), dp (density-independent pixels), sp (scaled pixels based on preferred font size),
in (inches), mm (millimeters).
<p>This may also be a reference to a resource (in the form
"<code>@[<i>package</i>:]<i>type</i>:<i>name</i></code>") or
theme attribute (in the form
"<code>?[<i>package</i>:][<i>type</i>:]<i>name</i></code>")
containing a value of this type.
          @attr name com.sothree.slidinguppanel.library:shadowHeight
        */
        public static final int SlidingUpPanelLayout_shadowHeight = 1;
    };
}
