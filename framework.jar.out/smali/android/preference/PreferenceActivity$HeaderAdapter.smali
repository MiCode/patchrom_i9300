.class Landroid/preference/PreferenceActivity$HeaderAdapter;
.super Landroid/widget/ArrayAdapter;
.source "PreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/PreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeaderAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/preference/PreferenceActivity$Header;",
        ">;"
    }
.end annotation


# instance fields
.field private mHeaderItemLayoutResID:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mSelectedId:I

.field private final mSmallestScreenWidthDp:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, objects:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const/4 v1, -0x1

    .line 259
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 255
    iput v1, p0, Landroid/preference/PreferenceActivity$HeaderAdapter;->mSelectedId:I

    .line 256
    const v0, 0x1090097

    iput v0, p0, Landroid/preference/PreferenceActivity$HeaderAdapter;->mHeaderItemLayoutResID:I

    .line 260
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Landroid/preference/PreferenceActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 261
    iput v1, p0, Landroid/preference/PreferenceActivity$HeaderAdapter;->mSelectedId:I

    .line 262
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v0, p0, Landroid/preference/PreferenceActivity$HeaderAdapter;->mSmallestScreenWidthDp:I

    .line 263
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .locals 0
    .parameter "context"
    .parameter
    .parameter "headerItemLayoutResID"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 266
    .local p2, objects:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    invoke-direct {p0, p1, p2}, Landroid/preference/PreferenceActivity$HeaderAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 267
    iput p3, p0, Landroid/preference/PreferenceActivity$HeaderAdapter;->mHeaderItemLayoutResID:I

    .line 268
    return-void
.end method


# virtual methods
.method public getSelectedId()I
    .locals 1

    .prologue
    .line 275
    iget v0, p0, Landroid/preference/PreferenceActivity$HeaderAdapter;->mSelectedId:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v6, 0x0

    .line 283
    if-nez p2, :cond_1

    .line 284
    iget-object v4, p0, Landroid/preference/PreferenceActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v5, p0, Landroid/preference/PreferenceActivity$HeaderAdapter;->mHeaderItemLayoutResID:I

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 286
    .local v3, view:Landroid/view/View;
    new-instance v1, Landroid/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;

    const/4 v4, 0x0

    invoke-direct {v1, v4}, Landroid/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;-><init>(Landroid/preference/PreferenceActivity$1;)V

    .line 287
    .local v1, holder:Landroid/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;
    const v4, 0x1020006

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v1, Landroid/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 288
    const v4, 0x1020016

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Landroid/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 289
    const v4, 0x1020010

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Landroid/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 290
    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 297
    :goto_0
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity$HeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 298
    .local v0, header:Landroid/preference/PreferenceActivity$Header;
    iget-object v4, v1, Landroid/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    iget v5, v0, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 299
    iget-object v4, v1, Landroid/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceActivity$Header;->getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 301
    .local v2, summary:Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 302
    iget-object v4, v1, Landroid/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 303
    iget-object v4, v1, Landroid/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    :goto_1
    iget v4, p0, Landroid/preference/PreferenceActivity$HeaderAdapter;->mHeaderItemLayoutResID:I

    const v5, 0x1090097

    if-eq v4, v5, :cond_0

    iget v4, p0, Landroid/preference/PreferenceActivity$HeaderAdapter;->mSmallestScreenWidthDp:I

    const/16 v5, 0x258

    if-lt v4, v5, :cond_0

    .line 310
    iget v4, p0, Landroid/preference/PreferenceActivity$HeaderAdapter;->mSelectedId:I

    if-ne v4, p1, :cond_3

    .line 311
    iget-object v4, v1, Landroid/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    sget-object v5, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 317
    :cond_0
    :goto_2
    return-object v3

    .line 292
    .end local v0           #header:Landroid/preference/PreferenceActivity$Header;
    .end local v1           #holder:Landroid/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;
    .end local v2           #summary:Ljava/lang/CharSequence;
    .end local v3           #view:Landroid/view/View;
    :cond_1
    move-object v3, p2

    .line 293
    .restart local v3       #view:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;

    .restart local v1       #holder:Landroid/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;
    goto :goto_0

    .line 305
    .restart local v0       #header:Landroid/preference/PreferenceActivity$Header;
    .restart local v2       #summary:Ljava/lang/CharSequence;
    :cond_2
    iget-object v4, v1, Landroid/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 313
    :cond_3
    iget-object v4, v1, Landroid/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_2
.end method

.method public setSelectedId(I)V
    .locals 0
    .parameter "nSelId"

    .prologue
    .line 271
    iput p1, p0, Landroid/preference/PreferenceActivity$HeaderAdapter;->mSelectedId:I

    .line 272
    return-void
.end method
