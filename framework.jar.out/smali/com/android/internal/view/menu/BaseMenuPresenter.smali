.class public abstract Lcom/android/internal/view/menu/BaseMenuPresenter;
.super Ljava/lang/Object;
.source "BaseMenuPresenter.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuPresenter;


# instance fields
.field private mCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

.field protected mContext:Landroid/content/Context;

.field private mId:I

.field protected mInflater:Landroid/view/LayoutInflater;

.field private mItemLayoutRes:I

.field protected mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private mMenuLayoutRes:I

.field protected mMenuView:Lcom/android/internal/view/menu/MenuView;

.field protected mSystemContext:Landroid/content/Context;

.field protected mSystemInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .parameter "context"
    .parameter "menuLayoutRes"
    .parameter "itemLayoutRes"

    .prologue
    .line 57
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mSystemContext:Landroid/content/Context;

    .line 59
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mSystemInflater:Landroid/view/LayoutInflater;

    .line 60
    iput p2, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenuLayoutRes:I

    .line 61
    iput p3, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mItemLayoutRes:I

    .line 62
    return-void
.end method


# virtual methods
.method protected addItemView(Landroid/view/View;I)V
    .locals 2
    .parameter "itemView"
    .parameter "childIndex"

    .prologue
    .line 141
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 142
    .local v0, currentParent:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 145
    :cond_0
    iget-object v1, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 146
    return-void
.end method

.method public abstract bindItemView(Lcom/android/internal/view/menu/MenuItemImpl;Lcom/android/internal/view/menu/MenuView$ItemView;)V
.end method

.method public collapseItemActionView(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 1
    .parameter "menu"
    .parameter "item"

    .prologue
    .line 235
    const/4 v0, 0x0

    return v0
.end method

.method public createItemView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView$ItemView;
    .locals 3
    .parameter "parent"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mSystemInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mItemLayoutRes:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/view/menu/MenuView$ItemView;

    return-object v0
.end method

.method public expandItemActionView(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 1
    .parameter "menu"
    .parameter "item"

    .prologue
    .line 231
    const/4 v0, 0x0

    return v0
.end method

.method protected filterLeftoverView(Landroid/view/ViewGroup;I)Z
    .locals 1
    .parameter "parent"
    .parameter "childIndex"

    .prologue
    .line 155
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 156
    const/4 v0, 0x1

    return v0
.end method

.method public flagActionItems()Z
    .locals 1

    .prologue
    .line 227
    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 239
    iget v0, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mId:I

    return v0
.end method

.method public getItemView(Lcom/android/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "item"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 185
    instance-of v1, p2, Lcom/android/internal/view/menu/MenuView$ItemView;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 186
    check-cast v0, Lcom/android/internal/view/menu/MenuView$ItemView;

    .line 190
    .local v0, itemView:Lcom/android/internal/view/menu/MenuView$ItemView;
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/view/menu/BaseMenuPresenter;->bindItemView(Lcom/android/internal/view/menu/MenuItemImpl;Lcom/android/internal/view/menu/MenuView$ItemView;)V

    .line 191
    check-cast v0, Landroid/view/View;

    .end local v0           #itemView:Lcom/android/internal/view/menu/MenuView$ItemView;
    return-object v0

    .line 188
    :cond_0
    invoke-virtual {p0, p3}, Lcom/android/internal/view/menu/BaseMenuPresenter;->createItemView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView$ItemView;

    move-result-object v0

    .restart local v0       #itemView:Lcom/android/internal/view/menu/MenuView$ItemView;
    goto :goto_0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;
    .locals 3
    .parameter "root"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    if-nez v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mSystemInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenuLayoutRes:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/view/menu/MenuView;

    iput-object v0, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    .line 75
    iget-object v0, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    iget-object v1, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v1}, Lcom/android/internal/view/menu/MenuView;->initialize(Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 76
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/BaseMenuPresenter;->updateMenuView(Z)V

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    return-object v0
.end method

.method public initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 1
    .parameter "context"
    .parameter "menu"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mContext:Landroid/content/Context;

    .line 67
    iget-object v0, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    .line 68
    iput-object p2, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 69
    return-void
.end method

.method public onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .locals 1
    .parameter "menu"
    .parameter "allMenusAreClosing"

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/view/menu/MenuPresenter$Callback;->onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V

    .line 217
    :cond_0
    return-void
.end method

.method public onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1}, Lcom/android/internal/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Lcom/android/internal/view/menu/MenuBuilder;)Z

    move-result v0

    .line 223
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V
    .locals 0
    .parameter "cb"

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .line 161
    return-void
.end method

.method public setId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 243
    iput p1, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mId:I

    .line 244
    return-void
.end method

.method protected setMenuLayoutRes(II)V
    .locals 0
    .parameter "menuLayoutRes"
    .parameter "itemLayoutRes"

    .prologue
    .line 250
    iput p1, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenuLayoutRes:I

    .line 251
    iput p2, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mItemLayoutRes:I

    .line 252
    return-void
.end method

.method public shouldIncludeItem(ILcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 1
    .parameter "childIndex"
    .parameter "item"

    .prologue
    .line 210
    const/4 v0, 0x1

    return v0
.end method

.method public updateMenuView(Z)V
    .locals 13
    .parameter "cleared"

    .prologue
    .line 86
    iget-object v8, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v8, Landroid/view/ViewGroup;

    .line 87
    .local v8, parent:Landroid/view/ViewGroup;
    if-nez v8, :cond_1

    .line 132
    :cond_0
    return-void

    .line 89
    :cond_1
    const/4 v0, 0x0

    .line 90
    .local v0, childIndex:I
    iget-object v10, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v10, :cond_7

    .line 91
    iget-object v10, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v10}, Lcom/android/internal/view/menu/MenuBuilder;->flagActionItems()V

    .line 92
    iget-object v10, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v10}, Lcom/android/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v9

    .line 93
    .local v9, visibleItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 94
    .local v4, itemCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_7

    .line 95
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 96
    .local v3, item:Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {p0, v0, v3}, Lcom/android/internal/view/menu/BaseMenuPresenter;->shouldIncludeItem(ILcom/android/internal/view/menu/MenuItemImpl;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 97
    invoke-virtual {v8, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 98
    .local v1, convertView:Landroid/view/View;
    instance-of v10, v1, Lcom/android/internal/view/menu/MenuView$ItemView;

    if-eqz v10, :cond_6

    move-object v10, v1

    check-cast v10, Lcom/android/internal/view/menu/MenuView$ItemView;

    invoke-interface {v10}, Lcom/android/internal/view/menu/MenuView$ItemView;->getItemData()Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v6

    .line 100
    .local v6, oldItem:Lcom/android/internal/view/menu/MenuItemImpl;
    :goto_1
    invoke-virtual {p0, v3, v1, v8}, Lcom/android/internal/view/menu/BaseMenuPresenter;->getItemView(Lcom/android/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 101
    .local v5, itemView:Landroid/view/View;
    if-eq v3, v6, :cond_2

    .line 103
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Landroid/view/View;->setPressed(Z)V

    .line 104
    invoke-virtual {v5}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 106
    :cond_2
    if-eq v5, v1, :cond_4

    .line 111
    new-instance v7, Landroid/util/TypedValue;

    invoke-direct {v7}, Landroid/util/TypedValue;-><init>()V

    .line 112
    .local v7, outValue:Landroid/util/TypedValue;
    iget-object v10, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v10

    const v11, 0x10103ec

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v7, v12}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 113
    iget v10, v7, Landroid/util/TypedValue;->data:I

    if-eqz v10, :cond_3

    .line 114
    if-eqz v1, :cond_3

    instance-of v10, v5, Lcom/android/internal/view/menu/ActionMenuItemView;

    if-nez v10, :cond_3

    .line 115
    invoke-virtual {p0, v8, v0}, Lcom/android/internal/view/menu/BaseMenuPresenter;->filterLeftoverView(Landroid/view/ViewGroup;I)Z

    .line 119
    :cond_3
    invoke-virtual {p0, v5, v0}, Lcom/android/internal/view/menu/BaseMenuPresenter;->addItemView(Landroid/view/View;I)V

    .line 121
    .end local v7           #outValue:Landroid/util/TypedValue;
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 94
    .end local v1           #convertView:Landroid/view/View;
    .end local v5           #itemView:Landroid/view/View;
    .end local v6           #oldItem:Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 98
    .restart local v1       #convertView:Landroid/view/View;
    :cond_6
    const/4 v6, 0x0

    goto :goto_1

    .line 127
    .end local v1           #convertView:Landroid/view/View;
    .end local v2           #i:I
    .end local v3           #item:Lcom/android/internal/view/menu/MenuItemImpl;
    .end local v4           #itemCount:I
    .end local v9           #visibleItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :cond_7
    :goto_2
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    if-ge v0, v10, :cond_0

    .line 128
    invoke-virtual {p0, v8, v0}, Lcom/android/internal/view/menu/BaseMenuPresenter;->filterLeftoverView(Landroid/view/ViewGroup;I)Z

    move-result v10

    if-nez v10, :cond_7

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method
