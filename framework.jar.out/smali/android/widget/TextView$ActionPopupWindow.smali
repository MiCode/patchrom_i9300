.class Landroid/widget/TextView$ActionPopupWindow;
.super Landroid/widget/TextView$PinnedPopupWindow;
.source "TextView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionPopupWindow"
.end annotation


# static fields
.field private static final POPUP_TEXT_LAYOUT:I = 0x10900ca

.field private static final TW_POPUP_TEXT_LAYOUT:I = 0x1090100


# instance fields
.field private mClipboardTextView:Landroid/widget/TextView;

.field private mPasteTextView:Landroid/widget/TextView;

.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/TextView;)V
    .locals 0
    .parameter

    .prologue
    .line 11166
    iput-object p1, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Landroid/widget/TextView$PinnedPopupWindow;-><init>(Landroid/widget/TextView;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/TextView;Landroid/widget/TextView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11166
    invoke-direct {p0, p1}, Landroid/widget/TextView$ActionPopupWindow;-><init>(Landroid/widget/TextView;)V

    return-void
.end method


# virtual methods
.method protected clipVertically(I)I
    .locals 5
    .parameter "positionY"

    .prologue
    .line 11338
    if-gez p1, :cond_0

    .line 11339
    invoke-virtual {p0}, Landroid/widget/TextView$ActionPopupWindow;->getTextOffset()I

    move-result v2

    .line 11340
    .local v2, offset:I
    iget-object v3, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    iget-object v3, v3, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v3, v2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 11341
    .local v1, line:I
    iget-object v3, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    iget-object v3, v3, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v3, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v3

    iget-object v4, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    iget-object v4, v4, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v4, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr p1, v3

    .line 11342
    iget-object v3, p0, Landroid/widget/TextView$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    add-int/2addr p1, v3

    .line 11345
    iget-object v3, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/widget/TextView;->access$6900(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mTextSelectHandleRes:I
    invoke-static {v4}, Landroid/widget/TextView;->access$6800(Landroid/widget/TextView;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 11346
    .local v0, handle:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    add-int/2addr p1, v3

    .line 11349
    .end local v0           #handle:Landroid/graphics/drawable/Drawable;
    .end local v1           #line:I
    .end local v2           #offset:I
    :cond_0
    return p1
.end method

.method protected createPopupWindow()V
    .locals 4

    .prologue
    .line 11179
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/widget/TextView;->access$5900(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x10102c8

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Landroid/widget/TextView$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 11181
    iget-object v0, p0, Landroid/widget/TextView$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 11182
    return-void
.end method

.method protected getTextOffset()I
    .locals 2

    .prologue
    .line 11328
    iget-object v0, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    iget-object v1, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method protected getVerticalLocalPosition(I)I
    .locals 2
    .parameter "line"

    .prologue
    .line 11333
    iget-object v0, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    iget-object v1, p0, Landroid/widget/TextView$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method protected initContentView()V
    .locals 10

    .prologue
    const v9, 0x1090100

    const/4 v8, -0x2

    const/4 v7, 0x0

    .line 11186
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v5, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 11187
    .local v3, linearLayout:Landroid/widget/LinearLayout;
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 11188
    iput-object v3, p0, Landroid/widget/TextView$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    .line 11190
    iget-object v5, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mThemeDeviceDefault:Z
    invoke-static {v5}, Landroid/widget/TextView;->access$4800(Landroid/widget/TextView;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 11191
    invoke-static {}, Landroid/util/GeneralUtil;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 11192
    iget-object v5, p0, Landroid/widget/TextView$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    const v6, 0x10808de

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 11206
    :goto_0
    iget-object v5, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v5}, Landroid/widget/TextView;->access$6000(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 11209
    .local v2, inflater:Landroid/view/LayoutInflater;
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 11213
    .local v4, wrapContent:Landroid/view/ViewGroup$LayoutParams;
    iget-object v5, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mThemeDeviceDefault:Z
    invoke-static {v5}, Landroid/widget/TextView;->access$4800(Landroid/widget/TextView;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 11214
    invoke-virtual {v2, v9, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Landroid/widget/TextView$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    .line 11219
    :goto_1
    iget-object v5, p0, Landroid/widget/TextView$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 11220
    iget-object v5, p0, Landroid/widget/TextView$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v6, p0, Landroid/widget/TextView$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 11221
    iget-object v5, p0, Landroid/widget/TextView$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    const v6, 0x104000b

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 11222
    iget-object v5, p0, Landroid/widget/TextView$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11225
    iget-object v5, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mThemeDeviceDefault:Z
    invoke-static {v5}, Landroid/widget/TextView;->access$4800(Landroid/widget/TextView;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 11226
    invoke-static {}, Landroid/util/GeneralUtil;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 11228
    iget-object v5, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v5}, Landroid/widget/TextView;->access$6100(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x108074c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 11237
    .local v0, drawable1:Landroid/graphics/drawable/Drawable;
    :goto_2
    iget-object v5, p0, Landroid/widget/TextView$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v0, v7, v7, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 11253
    iget-object v5, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mThemeDeviceDefault:Z
    invoke-static {v5}, Landroid/widget/TextView;->access$4800(Landroid/widget/TextView;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 11254
    invoke-virtual {v2, v9, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Landroid/widget/TextView$ActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    .line 11255
    iget-object v5, p0, Landroid/widget/TextView$ActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 11256
    iget-object v5, p0, Landroid/widget/TextView$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v6, p0, Landroid/widget/TextView$ActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 11257
    iget-object v5, p0, Landroid/widget/TextView$ActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    const v6, 0x10405cd

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 11258
    iget-object v5, p0, Landroid/widget/TextView$ActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11261
    invoke-static {}, Landroid/util/GeneralUtil;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 11263
    iget-object v5, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v5}, Landroid/widget/TextView;->access$6400(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x108074a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 11268
    .local v1, drawable3:Landroid/graphics/drawable/Drawable;
    :goto_3
    iget-object v5, p0, Landroid/widget/TextView$ActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v1, v7, v7, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 11271
    .end local v1           #drawable3:Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void

    .line 11195
    .end local v0           #drawable1:Landroid/graphics/drawable/Drawable;
    .end local v2           #inflater:Landroid/view/LayoutInflater;
    .end local v4           #wrapContent:Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    iget-object v5, p0, Landroid/widget/TextView$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    const v6, 0x1080909

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 11200
    :cond_2
    iget-object v5, p0, Landroid/widget/TextView$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    const v6, 0x10806f9

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 11216
    .restart local v2       #inflater:Landroid/view/LayoutInflater;
    .restart local v4       #wrapContent:Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    const v5, 0x10900ca

    invoke-virtual {v2, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Landroid/widget/TextView$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    goto/16 :goto_1

    .line 11231
    :cond_4
    iget-object v5, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v5}, Landroid/widget/TextView;->access$6200(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x108074b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0       #drawable1:Landroid/graphics/drawable/Drawable;
    goto :goto_2

    .line 11234
    .end local v0           #drawable1:Landroid/graphics/drawable/Drawable;
    :cond_5
    iget-object v5, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v5}, Landroid/widget/TextView;->access$6300(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1080355

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0       #drawable1:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_2

    .line 11266
    :cond_6
    iget-object v5, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v5}, Landroid/widget/TextView;->access$6500(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1080749

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .restart local v1       #drawable3:Landroid/graphics/drawable/Drawable;
    goto :goto_3
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 11305
    iget-object v0, p0, Landroid/widget/TextView$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->canPaste()Z
    invoke-static {v0}, Landroid/widget/TextView;->access$5100(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11306
    iget-object v0, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    const v1, 0x1020022

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 11307
    invoke-virtual {p0}, Landroid/widget/TextView$ActionPopupWindow;->hide()V

    .line 11324
    :cond_0
    :goto_0
    return-void

    .line 11316
    :cond_1
    iget-object v0, p0, Landroid/widget/TextView$ActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    .line 11317
    iget-object v0, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    const v1, 0x1020246

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 11318
    invoke-virtual {p0}, Landroid/widget/TextView$ActionPopupWindow;->hide()V

    .line 11320
    iget-object v0, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->hideControllers()V

    goto :goto_0
.end method

.method public show()V
    .locals 9

    .prologue
    const/16 v7, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 11275
    iget-object v6, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->canPaste()Z
    invoke-static {v6}, Landroid/widget/TextView;->access$5100(Landroid/widget/TextView;)Z

    move-result v0

    .line 11276
    .local v0, canPaste:Z
    iget-object v6, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->isSuggestionsEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->isCursorInsideSuggestionSpan()Z
    invoke-static {v6}, Landroid/widget/TextView;->access$6600(Landroid/widget/TextView;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v2, v4

    .line 11277
    .local v2, canSuggest:Z
    :goto_0
    iget-object v8, p0, Landroid/widget/TextView$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    move v6, v5

    :goto_1
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11281
    iget-object v6, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v8, "clipboardEx"

    invoke-virtual {v6, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/sec/clipboard/ClipboardExManager;

    .line 11282
    .local v3, clipEx:Landroid/sec/clipboard/ClipboardExManager;
    iget-object v6, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mThemeDeviceDefault:Z
    invoke-static {v6}, Landroid/widget/TextView;->access$4800(Landroid/widget/TextView;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 11284
    invoke-virtual {v3}, Landroid/sec/clipboard/ClipboardExManager;->getDataListSize()I

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;
    invoke-static {v6}, Landroid/widget/TextView;->access$6700(Landroid/widget/TextView;)Landroid/sec/enterprise/RestrictionPolicy;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;
    invoke-static {v6}, Landroid/widget/TextView;->access$6700(Landroid/widget/TextView;)Landroid/sec/enterprise/RestrictionPolicy;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/sec/enterprise/RestrictionPolicy;->isClipboardAllowed(Z)Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_0
    move v1, v4

    .line 11287
    .local v1, canShowClipboard:Z
    :goto_2
    iget-object v4, p0, Landroid/widget/TextView$ActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_6

    :goto_3
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11294
    .end local v1           #canShowClipboard:Z
    :cond_1
    iget-object v4, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mThemeDeviceDefault:Z
    invoke-static {v4}, Landroid/widget/TextView;->access$4800(Landroid/widget/TextView;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 11295
    if-nez v0, :cond_8

    invoke-virtual {v3}, Landroid/sec/clipboard/ClipboardExManager;->getDataListSize()I

    move-result v4

    if-nez v4, :cond_8

    .line 11301
    :cond_2
    :goto_4
    return-void

    .end local v2           #canSuggest:Z
    .end local v3           #clipEx:Landroid/sec/clipboard/ClipboardExManager;
    :cond_3
    move v2, v5

    .line 11276
    goto :goto_0

    .restart local v2       #canSuggest:Z
    :cond_4
    move v6, v7

    .line 11277
    goto :goto_1

    .restart local v3       #clipEx:Landroid/sec/clipboard/ClipboardExManager;
    :cond_5
    move v1, v5

    .line 11284
    goto :goto_2

    .restart local v1       #canShowClipboard:Z
    :cond_6
    move v5, v7

    .line 11287
    goto :goto_3

    .line 11297
    .end local v1           #canShowClipboard:Z
    :cond_7
    if-eqz v0, :cond_2

    .line 11300
    :cond_8
    invoke-super {p0}, Landroid/widget/TextView$PinnedPopupWindow;->show()V

    goto :goto_4
.end method
