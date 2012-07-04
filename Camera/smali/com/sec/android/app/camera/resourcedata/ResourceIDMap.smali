.class public Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;
.super Ljava/lang/Object;
.source "ResourceIDMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    }
.end annotation


# instance fields
.field protected mResourceIDs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 26

    .prologue
    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    .line 50
    const-string v1, "ro.csc.country_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 52
    .local v25, country_code:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x63

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v3, 0x7f02019b

    const v4, 0x7f02019b

    const v5, 0x7f02019b

    const/high16 v6, 0x7f09

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v7, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x27

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v3, 0x7f02019a

    const v4, 0x7f02019a

    const/4 v5, 0x0

    const/high16 v6, 0x7f09

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v7, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x32

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v3, 0x7f02019a

    const v4, 0x7f02019a

    const/4 v5, 0x0

    const v6, 0x7f0900e9

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v7, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x24

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v3, 0x7f020110

    const v4, 0x7f020111

    const/4 v5, 0x0

    const v6, 0x7f0900c4

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v7, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v3, 0x7f020089

    const v4, 0x7f02008a

    const/4 v5, 0x0

    const v6, 0x7f0900ac

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v7, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v3, 0x7f02019a

    const v4, 0x7f02019a

    const/4 v5, 0x0

    const v6, 0x7f0900ab

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v7, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v3, 0x7f020136

    const v4, 0x7f020137

    const/4 v5, 0x0

    const v6, 0x7f09009e

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v7, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v3, 0x7f0200d4

    const v4, 0x7f0200d4

    const/4 v5, 0x0

    const v6, 0x7f0900a1

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v7, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v3, 0x7f020112

    const v4, 0x7f020113

    const/4 v5, 0x0

    const v6, 0x7f090015

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v7, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v3, 0x7f02005a

    const v4, 0x7f02005a

    const/4 v5, 0x0

    const v6, 0x7f0900b0

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v7, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v3, 0x7f02019a

    const v4, 0x7f02019a

    const/4 v5, 0x0

    const v6, 0x7f0900a0

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v7, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const v6, 0x7f0900ae

    .line 117
    .local v6, exposureValueString:I
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v3, 0x7f020083

    const v4, 0x7f020084

    const/4 v5, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v7, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02006b

    const v10, 0x7f02006c

    const/4 v11, 0x0

    const v12, 0x7f0900a5

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02019a

    const v10, 0x7f02019a

    const/4 v11, 0x0

    const v12, 0x7f0900a4

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020049

    const v10, 0x7f020049

    const/4 v11, 0x0

    const v12, 0x7f0900a7

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02019a

    const v10, 0x7f02019a

    const/4 v11, 0x0

    const v12, 0x7f0900b2

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02019a

    const v10, 0x7f02019a

    const/4 v11, 0x0

    const v12, 0x7f0900b4

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02019a

    const v10, 0x7f02019a

    const/4 v11, 0x0

    const v12, 0x7f0900b6

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02019a

    const v10, 0x7f02019a

    const/4 v11, 0x0

    const v12, 0x7f0900b1

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02019a

    const v10, 0x7f02019a

    const/4 v11, 0x0

    const v12, 0x7f0900b9

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x3c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02019a

    const v10, 0x7f02019a

    const/4 v11, 0x0

    const v12, 0x7f0900c2

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02019a

    const v10, 0x7f02019a

    const/4 v11, 0x0

    const v12, 0x7f0900b7

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x33

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02019a

    const v10, 0x7f02019a

    const/4 v11, 0x0

    const v12, 0x7f0900c3

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02019a

    const v10, 0x7f02019a

    const/4 v11, 0x0

    const v12, 0x7f0900b8

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x35

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02019a

    const v10, 0x7f02019a

    const/4 v11, 0x0

    const v12, 0x7f0900a2

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x36

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0201b9

    const v10, 0x7f0201ba

    const/4 v11, 0x0

    const v12, 0x7f0900a3

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02019a

    const v10, 0x7f02019a

    const/4 v11, 0x0

    const v12, 0x7f0900a8

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02019a

    const v10, 0x7f02019a

    const/4 v11, 0x0

    const v12, 0x7f0900bc

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x1e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0200d0

    const v10, 0x7f0200d1

    const/4 v11, 0x0

    const v12, 0x7f0900bd

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x23

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02019a

    const v10, 0x7f02019a

    const/4 v11, 0x0

    const v12, 0x7f0900c1

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xbce

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02010e

    const v10, 0x7f02010f

    const/4 v11, 0x0

    const v12, 0x7f0900c5

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xbbc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02019a

    const v10, 0x7f02019a

    const/4 v11, 0x0

    const v12, 0x7f0900a1

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xbb9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0200c7

    const v10, 0x7f0200c7

    const/4 v11, 0x0

    const v12, 0x7f0900af

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xbba

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02019a

    const v10, 0x7f02019a

    const/4 v11, 0x0

    const v12, 0x7f09009e

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xbd0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020112

    const v10, 0x7f020113

    const/4 v11, 0x0

    const v12, 0x7f090015

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xbbb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020089

    const v10, 0x7f02008a

    const/4 v11, 0x0

    const v12, 0x7f0900ac

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xbbe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02019a

    const v10, 0x7f02019a

    const/4 v11, 0x0

    const v12, 0x7f0900a0

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xbc1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v3, 0x7f020083

    const v4, 0x7f020084

    const/4 v5, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v7, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xbcf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02019a

    const v10, 0x7f02019a

    const/4 v11, 0x0

    const v12, 0x7f0900c1

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xbbf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02019a

    const v10, 0x7f02019a

    const/4 v11, 0x0

    const v12, 0x7f0900a4

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xbc0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02006b

    const v10, 0x7f02006c

    const/4 v11, 0x0

    const v12, 0x7f0900a5

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xbc2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02019a

    const v10, 0x7f02019a

    const/4 v11, 0x0

    const v12, 0x7f0900b6

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xbc3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02019a

    const v10, 0x7f02019a

    const/4 v11, 0x0

    const v12, 0x7f0900ba

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xbd7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02019a

    const v10, 0x7f02019a

    const/4 v11, 0x0

    const v12, 0x7f09012b

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xbcc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02019a

    const v10, 0x7f02019a

    const/4 v11, 0x0

    const v12, 0x7f0900b9

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xbcd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02019a

    const v10, 0x7f02019a

    const/4 v11, 0x0

    const v12, 0x7f0900b8

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xbc9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02019a

    const v10, 0x7f02019a

    const/4 v11, 0x0

    const v12, 0x7f0900bc

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xbca

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0200d0

    const v10, 0x7f0200d1

    const/4 v11, 0x0

    const v12, 0x7f0900bd

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xbcb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02019a

    const v10, 0x7f02019a

    const/4 v11, 0x0

    const v12, 0x7f0900bb

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xbd6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02019a

    const v10, 0x7f02019a

    const/4 v11, 0x0

    const v12, 0x7f0900b4

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xbd8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02019a

    const v10, 0x7f02019a

    const/4 v11, 0x0

    const v12, 0x7f090133

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02019a

    const v10, 0x7f02019a

    const/4 v11, 0x0

    const/high16 v12, 0x7f09

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x65

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02019a

    const v10, 0x7f02019a

    const/4 v11, 0x0

    const/high16 v12, 0x7f09

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xc8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020110

    const v10, 0x7f020111

    const/4 v11, 0x0

    const v12, 0x7f090097

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xc9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020110

    const v10, 0x7f020111

    const/4 v11, 0x0

    const v12, 0x7f090096

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x1068

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02010e

    const v10, 0x7f02010f

    const/4 v11, 0x0

    const v12, 0x7f090097

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x1069

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02010e

    const v10, 0x7f02010f

    const/4 v11, 0x0

    const v12, 0x7f090096

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x12c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020138

    const v10, 0x7f020139

    const/4 v11, 0x0

    const v12, 0x7f090020

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x12d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020122

    const v10, 0x7f020123

    const/4 v11, 0x0

    const v12, 0x7f090021

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x12e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020130

    const v10, 0x7f020131

    const/4 v11, 0x0

    const v12, 0x7f090023

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x12f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02013a

    const v10, 0x7f02013b

    const/4 v11, 0x0

    const v12, 0x7f090024

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x130

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02019a

    const v10, 0x7f02019a

    const/4 v11, 0x0

    const/high16 v12, 0x7f09

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x131

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02019a

    const v10, 0x7f02019a

    const/4 v11, 0x0

    const v12, 0x7f090025

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x133

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02011c

    const v10, 0x7f02011d

    const/4 v11, 0x0

    const v12, 0x7f090026

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x135

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02019a

    const v10, 0x7f02019a

    const/4 v11, 0x0

    const v12, 0x7f090028

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x136

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020116

    const v10, 0x7f020117

    const/4 v11, 0x0

    const v12, 0x7f090029

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x137

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02019a

    const v10, 0x7f02019a

    const/4 v11, 0x0

    const v12, 0x7f09002a

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x139

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020120

    const v10, 0x7f020121

    const/4 v11, 0x0

    const v12, 0x7f09002b

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x13a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0200a1

    const v10, 0x7f0200a2

    const/4 v11, 0x0

    const v12, 0x7f09002d

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x13b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020114

    const v10, 0x7f020115

    const/4 v11, 0x0

    const v12, 0x7f09002c

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x13c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020060

    const v10, 0x7f020061

    const/4 v11, 0x0

    const v12, 0x7f09002e

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x13d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020015

    const v10, 0x7f020016

    const/4 v11, 0x0

    const v12, 0x7f09002f

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x1f4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020136

    const v10, 0x7f020137

    const/4 v11, 0x0

    const v12, 0x7f090088

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x1f5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020134

    const v10, 0x7f020135

    const/4 v11, 0x0

    const v12, 0x7f090089

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x1f6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02012c

    const v10, 0x7f02012d

    const/4 v11, 0x0

    const v12, 0x7f09008a

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x1f7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02012e

    const v10, 0x7f02012f

    const/4 v11, 0x0

    const v12, 0x7f090091

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x1f8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02013c

    const v10, 0x7f02013d

    const/4 v11, 0x0

    const v12, 0x7f09008b

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x1f9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020132

    const v10, 0x7f020133

    const/4 v11, 0x0

    const v12, 0x7f09008c

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x1fa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02011a

    const v10, 0x7f02011b

    const/4 v11, 0x0

    const v12, 0x7f09008d

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x1fb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02013e

    const v10, 0x7f02013f

    const/4 v11, 0x0

    const v12, 0x7f09008e

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x1fc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020124

    const v10, 0x7f020125

    const/4 v11, 0x0

    const v12, 0x7f09008f

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x1fd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020126

    const v10, 0x7f020127

    const/4 v11, 0x0

    const v12, 0x7f090090

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x1fe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020128

    const v10, 0x7f020129

    const/4 v11, 0x0

    const v12, 0x7f090092

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x1ff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020140

    const v10, 0x7f020141

    const/4 v11, 0x0

    const v12, 0x7f090093

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x200

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02011e

    const v10, 0x7f02011f

    const/4 v11, 0x0

    const v12, 0x7f090094

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x201

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020118

    const v10, 0x7f020119

    const/4 v11, 0x0

    const v12, 0x7f090095

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x258

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020087

    const v10, 0x7f020088

    const/4 v11, 0x0

    const v12, 0x7f090097

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x259

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020089

    const v10, 0x7f02008a

    const/4 v11, 0x0

    const v12, 0x7f090096

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x25a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020085

    const v10, 0x7f020086

    const/4 v11, 0x0

    const v12, 0x7f09006e

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x25b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02008b

    const v10, 0x7f02008c

    const/4 v11, 0x0

    const/high16 v12, 0x7f09

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x25c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020087

    const v10, 0x7f020088

    const/4 v11, 0x0

    const v12, 0x7f090097

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x25d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020089

    const v10, 0x7f02008a

    const/4 v11, 0x0

    const v12, 0x7f090096

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x25e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020085

    const v10, 0x7f020086

    const/4 v11, 0x0

    const v12, 0x7f09006e

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x25f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02008b

    const v10, 0x7f02008c

    const/4 v11, 0x0

    const/high16 v12, 0x7f09

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x2bc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020091

    const v10, 0x7f020092

    const/4 v11, 0x0

    const v12, 0x7f090097

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x2bd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020091

    const v10, 0x7f020092

    const/4 v11, 0x0

    const v12, 0x7f09006f

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x2be

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020095

    const v10, 0x7f020096

    const/4 v11, 0x0

    const v12, 0x7f090070

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x2bf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020093

    const v10, 0x7f020094

    const/4 v11, 0x0

    const v12, 0x7f090071

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x320

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020157

    const v10, 0x7f020158

    const/4 v11, 0x0

    const v12, 0x7f090097

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x321

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020153

    const v10, 0x7f020154

    const/4 v11, 0x0

    const v12, 0x7f090075

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x322

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020155

    const v10, 0x7f020156

    const/4 v11, 0x0

    const v12, 0x7f090076

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x323

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020151

    const v10, 0x7f020152

    const/4 v11, 0x0

    const v12, 0x7f090077

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x324

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020157

    const v10, 0x7f020158

    const/4 v11, 0x0

    const v12, 0x7f090097

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x325

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020153

    const v10, 0x7f020154

    const/4 v11, 0x0

    const v12, 0x7f090075

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x326

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020155

    const v10, 0x7f020156

    const/4 v11, 0x0

    const v12, 0x7f090076

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x327

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020151

    const v10, 0x7f020152

    const/4 v11, 0x0

    const v12, 0x7f090077

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x384

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020159

    const v10, 0x7f02015a

    const/4 v11, 0x0

    const v12, 0x7f090034

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x385

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02015d

    const v10, 0x7f02015e

    const/4 v11, 0x0

    const v12, 0x7f090036

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x386

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02015b

    const v10, 0x7f02015c

    const/4 v11, 0x0

    const v12, 0x7f090035

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x387

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020163

    const v10, 0x7f020164

    const/4 v11, 0x0

    const v12, 0x7f09003a

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x388

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02015f

    const v10, 0x7f020160

    const/4 v11, 0x0

    const v12, 0x7f090037

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x389

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020165

    const v10, 0x7f020166

    const/4 v11, 0x0

    const v12, 0x7f090039

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x38a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020161

    const v10, 0x7f020162

    const/4 v11, 0x0

    const v12, 0x7f090038

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x38b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020159

    const v10, 0x7f02015a

    const/4 v11, 0x0

    const v12, 0x7f090034

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x38c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02015d

    const v10, 0x7f02015e

    const/4 v11, 0x0

    const v12, 0x7f090036

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x38d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02015b

    const v10, 0x7f02015c

    const/4 v11, 0x0

    const v12, 0x7f090035

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x38e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020163

    const v10, 0x7f020164

    const/4 v11, 0x0

    const v12, 0x7f09003a

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x38f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02015f

    const v10, 0x7f020160

    const/4 v11, 0x0

    const v12, 0x7f090037

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x390

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020165

    const v10, 0x7f020166

    const/4 v11, 0x0

    const v12, 0x7f090039

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x391

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020161

    const v10, 0x7f020162

    const/4 v11, 0x0

    const v12, 0x7f090038

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x3e8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020069

    const v10, 0x7f02006a

    const/4 v11, 0x0

    const v12, 0x7f090088

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x3e9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020067

    const v10, 0x7f020068

    const/4 v11, 0x0

    const v12, 0x7f090044

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x3ea

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020065

    const v10, 0x7f020066

    const/4 v11, 0x0

    const v12, 0x7f090042

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x3eb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02006d

    const v10, 0x7f02006e

    const/4 v11, 0x0

    const v12, 0x7f090043

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x3ec

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02019a

    const v10, 0x7f02019a

    const/4 v11, 0x0

    const/high16 v12, 0x7f09

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x3ed

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02019a

    const v10, 0x7f02019a

    const/4 v11, 0x0

    const/high16 v12, 0x7f09

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x3ee

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02006f

    const v10, 0x7f020070

    const/4 v11, 0x0

    const/high16 v12, 0x7f09

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x3ef

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02019a

    const v10, 0x7f02019a

    const/4 v11, 0x0

    const v12, 0x7f090045

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x3f0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02019a

    const v10, 0x7f02019a

    const/4 v11, 0x0

    const v12, 0x7f090046

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x3fa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02019a

    const v10, 0x7f02019a

    const/4 v11, 0x0

    const v12, 0x7f090048

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x3fb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02019a

    const v10, 0x7f02019a

    const/4 v11, 0x0

    const v12, 0x7f090049

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x3fc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02019a

    const v10, 0x7f02019a

    const/4 v11, 0x0

    const v12, 0x7f09004a

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x3fe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02019a

    const v10, 0x7f02019a

    const/4 v11, 0x0

    const v12, 0x7f09004d

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x3fd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02019a

    const v10, 0x7f02019a

    const/4 v11, 0x0

    const v12, 0x7f09004e

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x400

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02019a

    const v10, 0x7f02019a

    const/4 v11, 0x0

    const v12, 0x7f09004b

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x3ff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02019a

    const v10, 0x7f02019a

    const/4 v11, 0x0

    const v12, 0x7f09004c

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x401

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02019a

    const v10, 0x7f02019a

    const/4 v11, 0x0

    const v12, 0x7f09004f

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x403

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02019a

    const v10, 0x7f02019a

    const/4 v11, 0x0

    const v12, 0x7f090050

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x402

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02019a

    const v10, 0x7f02019a

    const/4 v11, 0x0

    const v12, 0x7f090051

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x3f1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020069

    const v10, 0x7f02006a

    const/4 v11, 0x0

    const v12, 0x7f090088

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x3f2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020067

    const v10, 0x7f020068

    const/4 v11, 0x0

    const v12, 0x7f090044

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x3f3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020065

    const v10, 0x7f020066

    const/4 v11, 0x0

    const v12, 0x7f090042

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x3f4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02006d

    const v10, 0x7f02006e

    const/4 v11, 0x0

    const v12, 0x7f090043

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x3f5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02019a

    const v10, 0x7f02019a

    const/4 v11, 0x0

    const/high16 v12, 0x7f09

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x3f6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02019a

    const v10, 0x7f02019a

    const/4 v11, 0x0

    const/high16 v12, 0x7f09

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x3f7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02006f

    const v10, 0x7f020070

    const/4 v11, 0x0

    const/high16 v12, 0x7f09

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x3f8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02019a

    const v10, 0x7f02019a

    const/4 v11, 0x0

    const v12, 0x7f090045

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x3f9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02019a

    const v10, 0x7f02019a

    const/4 v11, 0x0

    const v12, 0x7f090046

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x404

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02019a

    const v10, 0x7f02019a

    const/4 v11, 0x0

    const v12, 0x7f090048

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x405

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02019a

    const v10, 0x7f02019a

    const/4 v11, 0x0

    const v12, 0x7f090049

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x406

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02019a

    const v10, 0x7f02019a

    const/4 v11, 0x0

    const v12, 0x7f09004a

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x408

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02019a

    const v10, 0x7f02019a

    const/4 v11, 0x0

    const v12, 0x7f09004d

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x407

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02019a

    const v10, 0x7f02019a

    const/4 v11, 0x0

    const v12, 0x7f09004e

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x40a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02019a

    const v10, 0x7f02019a

    const/4 v11, 0x0

    const v12, 0x7f09004b

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x409

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02019a

    const v10, 0x7f02019a

    const/4 v11, 0x0

    const v12, 0x7f09004c

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x40b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02019a

    const v10, 0x7f02019a

    const/4 v11, 0x0

    const v12, 0x7f09004f

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x40d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02019a

    const v10, 0x7f02019a

    const/4 v11, 0x0

    const v12, 0x7f090050

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x40c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02019a

    const v10, 0x7f02019a

    const/4 v11, 0x0

    const v12, 0x7f090051

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x44c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0200b3

    const v10, 0x7f0200b4

    const/4 v11, 0x0

    const v12, 0x7f090034

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x44d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0200af

    const v10, 0x7f0200b0

    const/4 v11, 0x0

    const v12, 0x7f09003b

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x44e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0200a9

    const v10, 0x7f0200aa

    const/4 v11, 0x0

    const v12, 0x7f09003c

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x44f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0200ab

    const v10, 0x7f0200ac

    const/4 v11, 0x0

    const v12, 0x7f09003d

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x450

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0200ad

    const v10, 0x7f0200ae

    const/4 v11, 0x0

    const v12, 0x7f09003e

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x451

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0200b1

    const v10, 0x7f0200b2

    const/4 v11, 0x0

    const v12, 0x7f09003f

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x452

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02019a

    const v10, 0x7f02019a

    const/4 v11, 0x0

    const/high16 v12, 0x7f09

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x453

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02019a

    const v10, 0x7f02019a

    const/4 v11, 0x0

    const v12, 0x7f090040

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x454

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02019a

    const v10, 0x7f02019a

    const/4 v11, 0x0

    const/high16 v12, 0x7f09

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x455

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02019a

    const v10, 0x7f02019a

    const/4 v11, 0x0

    const v12, 0x7f090041

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x456

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0200b7

    const v10, 0x7f0200b8

    const/4 v11, 0x0

    const/high16 v12, 0x7f09

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x457

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0200b5

    const v10, 0x7f0200b6

    const/4 v11, 0x0

    const/high16 v12, 0x7f09

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x458

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02019a

    const v10, 0x7f02019a

    const/4 v11, 0x0

    const/high16 v12, 0x7f09

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x4b0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0200b9

    const v10, 0x7f0200ba

    const/4 v11, 0x0

    const v12, 0x7f09007b

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x4b1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0200bd

    const v10, 0x7f0200be

    const/4 v11, 0x0

    const v12, 0x7f09007d

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x4b2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0200bb

    const v10, 0x7f0200bc

    const/4 v11, 0x0

    const v12, 0x7f09007e

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x578

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02004c

    const v10, 0x7f02004d

    const/4 v11, 0x0

    const v12, 0x7f090097

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x579

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02004e

    const v10, 0x7f02004f

    const/4 v11, 0x0

    const v12, 0x7f090096

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x57a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02004c

    const v10, 0x7f02004d

    const/4 v11, 0x0

    const v12, 0x7f090097

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x57b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02004e

    const v10, 0x7f02004f

    const/4 v11, 0x0

    const v12, 0x7f090096

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x5dc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020050

    const v10, 0x7f020051

    const/4 v11, 0x0

    const v12, 0x7f090097

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x5dd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020052

    const v10, 0x7f020053

    const/4 v11, 0x0

    const v12, 0x7f090096

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x5de

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020050

    const v10, 0x7f020051

    const/4 v11, 0x0

    const v12, 0x7f090097

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x5df

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020052

    const v10, 0x7f020053

    const/4 v11, 0x0

    const v12, 0x7f090096

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x640

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02005c

    const v10, 0x7f02005d

    const/4 v11, 0x0

    const v12, 0x7f090097

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x641

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02005e

    const v10, 0x7f02005f

    const/4 v11, 0x0

    const v12, 0x7f090096

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x6a4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0200a7

    const v10, 0x7f0200a8

    const/4 v11, 0x0

    const v12, 0x7f090073

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x6a5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0200a3

    const v10, 0x7f0200a4

    const/4 v11, 0x0

    const v12, 0x7f090074

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x6a6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0200a5

    const v10, 0x7f0200a6

    const/4 v11, 0x0

    const v12, 0x7f090030

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x6a7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0200a7

    const v10, 0x7f0200a8

    const/4 v11, 0x0

    const v12, 0x7f090073

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x6a8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0200a3

    const v10, 0x7f0200a4

    const/4 v11, 0x0

    const v12, 0x7f090074

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x6a9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0200a5

    const v10, 0x7f0200a6

    const/4 v11, 0x0

    const v12, 0x7f090030

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x960

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0200a7

    const v10, 0x7f0200a8

    const/4 v11, 0x0

    const v12, 0x7f09012c

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x963

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0200a7

    const v10, 0x7f0200a8

    const/4 v11, 0x0

    const v12, 0x7f090132

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x962

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0200a7

    const v10, 0x7f0200a8

    const/4 v11, 0x0

    const v12, 0x7f090131

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x961

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0200a7

    const v10, 0x7f0200a8

    const/4 v11, 0x0

    const v12, 0x7f090130

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x964

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0200a7

    const v10, 0x7f0200a8

    const/4 v11, 0x0

    const v12, 0x7f09012d

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x965

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0200a7

    const v10, 0x7f0200a8

    const/4 v11, 0x0

    const v12, 0x7f09012e

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x966

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f0200a7

    const v10, 0x7f0200a8

    const/4 v11, 0x0

    const v12, 0x7f09012f

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x708

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02009b

    const v10, 0x7f02009c

    const/4 v11, 0x0

    const v12, 0x7f090097

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x709

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02009d

    const v10, 0x7f02009e

    const/4 v11, 0x0

    const v12, 0x7f090096

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x70a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02009b

    const v10, 0x7f02009c

    const/4 v11, 0x0

    const v12, 0x7f090097

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x70b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02009d

    const v10, 0x7f02009e

    const/4 v11, 0x0

    const v12, 0x7f090096

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x76c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02010a

    const v10, 0x7f02010b

    const/4 v11, 0x0

    const v12, 0x7f090097

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x76d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f02010c

    const v10, 0x7f02010d

    const/4 v11, 0x0

    const v12, 0x7f090096

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xfa0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020112

    const v10, 0x7f020113

    const/4 v11, 0x0

    const v12, 0x7f090097

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xfa1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020112

    const v10, 0x7f020113

    const/4 v11, 0x0

    const v12, 0x7f090096

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x37

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020112

    const v10, 0x7f020113

    const/4 v11, 0x0

    const v12, 0x7f0900f6

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x38

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020112

    const v10, 0x7f020113

    const/4 v11, 0x0

    const v12, 0x7f0900f7

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xfa4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020112

    const v10, 0x7f020113

    const/4 v11, 0x0

    const v12, 0x7f090097

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xfa5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020112

    const v10, 0x7f020113

    const/4 v11, 0x0

    const v12, 0x7f090096

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    const-string v1, "China"

    move-object/from16 v0, v25

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "china"

    move-object/from16 v0, v25

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHINA"

    move-object/from16 v0, v25

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const v12, 0x7f0900f9

    .line 461
    .local v12, networkTitleString:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x39

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v9, 0x7f020112

    const v10, 0x7f020113

    const/4 v11, 0x0

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x76f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f02010a

    const v16, 0x7f02010b

    const/16 v17, 0x0

    const v18, 0x7f090097

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x770

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f02010c

    const v16, 0x7f02010d

    const/16 v17, 0x0

    const v18, 0x7f090096

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x7d0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020097

    const v16, 0x7f020098

    const/16 v17, 0x0

    const v18, 0x7f090097

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x7d1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020099

    const v16, 0x7f02009a

    const/16 v17, 0x0

    const v18, 0x7f090096

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x834

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020145

    const v16, 0x7f020146

    const/16 v17, 0x0

    const v18, 0x7f090097

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x835

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f020147

    const v16, 0x7f020149

    const/16 v17, 0x0

    const v18, 0x7f090096

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    const v18, 0x7f09007f

    .line 477
    .local v18, storageString:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x898

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f02014a

    const v16, 0x7f02014b

    const/16 v17, 0x0

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x899

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v19, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v21, 0x7f02014c

    const v22, 0x7f02014d

    const/16 v23, 0x0

    const v24, 0x7f090081

    move-object/from16 v20, p0

    invoke-direct/range {v19 .. v24}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    move-object/from16 v0, v19

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x89a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v15, 0x7f02014a

    const v16, 0x7f02014b

    const/16 v17, 0x0

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x89b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v19, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v21, 0x7f02014c

    const v22, 0x7f02014d

    const/16 v23, 0x0

    const v24, 0x7f090081

    move-object/from16 v20, p0

    invoke-direct/range {v19 .. v24}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    move-object/from16 v0, v19

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x8fc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v19, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v21, 0x7f0200ec

    const v22, 0x7f0200ed

    const/16 v23, 0x0

    const v24, 0x7f090052

    move-object/from16 v20, p0

    invoke-direct/range {v19 .. v24}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    move-object/from16 v0, v19

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x8fd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v19, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v21, 0x7f020106

    const v22, 0x7f020107

    const/16 v23, 0x0

    const v24, 0x7f090053

    move-object/from16 v20, p0

    invoke-direct/range {v19 .. v24}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    move-object/from16 v0, v19

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x910

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v19, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v21, 0x7f020108

    const v22, 0x7f020109

    const/16 v23, 0x0

    const v24, 0x7f090054

    move-object/from16 v20, p0

    invoke-direct/range {v19 .. v24}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    move-object/from16 v0, v19

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x8fe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v19, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v21, 0x7f0200ea

    const v22, 0x7f0200eb

    const/16 v23, 0x0

    const v24, 0x7f090055

    move-object/from16 v20, p0

    invoke-direct/range {v19 .. v24}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    move-object/from16 v0, v19

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x8ff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v19, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v21, 0x7f020104

    const v22, 0x7f020105

    const/16 v23, 0x0

    const v24, 0x7f090056

    move-object/from16 v20, p0

    invoke-direct/range {v19 .. v24}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    move-object/from16 v0, v19

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x915

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v19, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v21, 0x7f0200e4

    const v22, 0x7f0200e5

    const/16 v23, 0x0

    const v24, 0x7f090057

    move-object/from16 v20, p0

    invoke-direct/range {v19 .. v24}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    move-object/from16 v0, v19

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x900

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v19, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v21, 0x7f0200e4

    const v22, 0x7f0200e5

    const/16 v23, 0x0

    const v24, 0x7f090058

    move-object/from16 v20, p0

    invoke-direct/range {v19 .. v24}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    move-object/from16 v0, v19

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x901

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v19, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v21, 0x7f020102

    const v22, 0x7f020103

    const/16 v23, 0x0

    const v24, 0x7f090059

    move-object/from16 v20, p0

    invoke-direct/range {v19 .. v24}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    move-object/from16 v0, v19

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x911

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v19, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v21, 0x7f020100

    const v22, 0x7f020101

    const/16 v23, 0x0

    const v24, 0x7f09005a

    move-object/from16 v20, p0

    invoke-direct/range {v19 .. v24}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    move-object/from16 v0, v19

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x902

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v19, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v21, 0x7f0200e2

    const v22, 0x7f0200e3

    const/16 v23, 0x0

    const v24, 0x7f09005b

    move-object/from16 v20, p0

    invoke-direct/range {v19 .. v24}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    move-object/from16 v0, v19

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x903

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v19, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v21, 0x7f0200fe

    const v22, 0x7f0200ff

    const/16 v23, 0x0

    const v24, 0x7f09005c

    move-object/from16 v20, p0

    invoke-direct/range {v19 .. v24}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    move-object/from16 v0, v19

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x913

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v19, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v21, 0x7f0200fe

    const v22, 0x7f0200ff

    const/16 v23, 0x0

    const v24, 0x7f09005d

    move-object/from16 v20, p0

    invoke-direct/range {v19 .. v24}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    move-object/from16 v0, v19

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x916

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v19, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v21, 0x7f0200fc

    const v22, 0x7f0200fd

    const/16 v23, 0x0

    const v24, 0x7f09005e

    move-object/from16 v20, p0

    invoke-direct/range {v19 .. v24}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    move-object/from16 v0, v19

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x904

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v19, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v21, 0x7f0200de

    const v22, 0x7f0200df

    const/16 v23, 0x0

    const v24, 0x7f090061

    move-object/from16 v20, p0

    invoke-direct/range {v19 .. v24}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    move-object/from16 v0, v19

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x905

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v19, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v21, 0x7f0200fa

    const v22, 0x7f0200fb

    const/16 v23, 0x0

    const v24, 0x7f090062

    move-object/from16 v20, p0

    invoke-direct/range {v19 .. v24}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    move-object/from16 v0, v19

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x917

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v19, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v21, 0x7f0200f8

    const v22, 0x7f0200f9

    const/16 v23, 0x0

    const v24, 0x7f090060

    move-object/from16 v20, p0

    invoke-direct/range {v19 .. v24}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    move-object/from16 v0, v19

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x918

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v19, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v21, 0x7f0200f6

    const v22, 0x7f0200f7

    const/16 v23, 0x0

    const v24, 0x7f090063

    move-object/from16 v20, p0

    invoke-direct/range {v19 .. v24}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    move-object/from16 v0, v19

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x914

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v19, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v21, 0x7f0200dc

    const v22, 0x7f0200dd

    const/16 v23, 0x0

    const v24, 0x7f090064

    move-object/from16 v20, p0

    invoke-direct/range {v19 .. v24}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    move-object/from16 v0, v19

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x906

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v19, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v21, 0x7f0200da

    const v22, 0x7f0200db

    const/16 v23, 0x0

    const v24, 0x7f090065

    move-object/from16 v20, p0

    invoke-direct/range {v19 .. v24}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    move-object/from16 v0, v19

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x912

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v19, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v21, 0x7f0200f2

    const v22, 0x7f0200f3

    const/16 v23, 0x0

    const v24, 0x7f090066

    move-object/from16 v20, p0

    invoke-direct/range {v19 .. v24}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    move-object/from16 v0, v19

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x919

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v19, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v21, 0x7f0200f0

    const v22, 0x7f0200f1

    const/16 v23, 0x0

    const v24, 0x7f090067

    move-object/from16 v20, p0

    invoke-direct/range {v19 .. v24}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    move-object/from16 v0, v19

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x907

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v19, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v21, 0x7f0200d2

    const v22, 0x7f0200d3

    const/16 v23, 0x0

    const v24, 0x7f09006a

    move-object/from16 v20, p0

    invoke-direct/range {v19 .. v24}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    move-object/from16 v0, v19

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x908

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v19, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v21, 0x7f0200ee

    const v22, 0x7f0200ef

    const/16 v23, 0x0

    const v24, 0x7f090068

    move-object/from16 v20, p0

    invoke-direct/range {v19 .. v24}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    move-object/from16 v0, v19

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x909

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v19, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v21, 0x7f0200d8

    const v22, 0x7f0200d9

    const/16 v23, 0x0

    const v24, 0x7f09005f

    move-object/from16 v20, p0

    invoke-direct/range {v19 .. v24}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    move-object/from16 v0, v19

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x90a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v19, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v21, 0x7f0200d4

    const v22, 0x7f0200d5

    const/16 v23, 0x0

    const v24, 0x7f090066

    move-object/from16 v20, p0

    invoke-direct/range {v19 .. v24}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    move-object/from16 v0, v19

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x90b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v19, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v21, 0x7f0200e8

    const v22, 0x7f0200e9

    const/16 v23, 0x0

    const v24, 0x7f090069

    move-object/from16 v20, p0

    invoke-direct/range {v19 .. v24}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    move-object/from16 v0, v19

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x90c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v19, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v21, 0x7f0200e6

    const v22, 0x7f0200e7

    const/16 v23, 0x0

    const v24, 0x7f09006a

    move-object/from16 v20, p0

    invoke-direct/range {v19 .. v24}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    move-object/from16 v0, v19

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x90d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v19, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v21, 0x7f02019a

    const v22, 0x7f02019a

    const/16 v23, 0x0

    const v24, 0x7f09006b

    move-object/from16 v20, p0

    invoke-direct/range {v19 .. v24}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    move-object/from16 v0, v19

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x90e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v19, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v21, 0x7f0200e0

    const v22, 0x7f0200e1

    const/16 v23, 0x0

    const v24, 0x7f09006c

    move-object/from16 v20, p0

    invoke-direct/range {v19 .. v24}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    move-object/from16 v0, v19

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x90f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v19, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v21, 0x7f0200d6

    const v22, 0x7f0200d7

    const/16 v23, 0x0

    const v24, 0x7f09006d

    move-object/from16 v20, p0

    invoke-direct/range {v19 .. v24}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    move-object/from16 v0, v19

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xc1c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v19, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v21, 0x7f0200cc

    const v22, 0x7f0200cd

    const/16 v23, 0x0

    const v24, 0x7f090082

    move-object/from16 v20, p0

    invoke-direct/range {v19 .. v24}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    move-object/from16 v0, v19

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xc1d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v19, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v21, 0x7f0200ca

    const v22, 0x7f0200cb

    const/16 v23, 0x0

    const v24, 0x7f090083

    move-object/from16 v20, p0

    invoke-direct/range {v19 .. v24}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    move-object/from16 v0, v19

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xc1e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v19, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v21, 0x7f02019a

    const v22, 0x7f02019a

    const/16 v23, 0x0

    const v24, 0x7f090085

    move-object/from16 v20, p0

    invoke-direct/range {v19 .. v24}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    move-object/from16 v0, v19

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xc1f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v19, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v21, 0x7f02019a

    const v22, 0x7f02019a

    const/16 v23, 0x0

    const v24, 0x7f090086

    move-object/from16 v20, p0

    invoke-direct/range {v19 .. v24}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    move-object/from16 v0, v19

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xc20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v19, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v21, 0x7f0200c8

    const v22, 0x7f0200c9

    const/16 v23, 0x0

    const v24, 0x7f090084

    move-object/from16 v20, p0

    invoke-direct/range {v19 .. v24}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    move-object/from16 v0, v19

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xc80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v19, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v21, 0x7f02019a

    const v22, 0x7f02019a

    const/16 v23, 0x0

    const/high16 v24, 0x7f09

    move-object/from16 v20, p0

    invoke-direct/range {v19 .. v24}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    move-object/from16 v0, v19

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xc81

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v19, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v21, 0x7f02019a

    const v22, 0x7f02019a

    const/16 v23, 0x0

    const/high16 v24, 0x7f09

    move-object/from16 v20, p0

    invoke-direct/range {v19 .. v24}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    move-object/from16 v0, v19

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xce5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v19, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v21, 0x7f02019a

    const v22, 0x7f02019a

    const/16 v23, 0x0

    const/high16 v24, 0x7f09

    move-object/from16 v20, p0

    invoke-direct/range {v19 .. v24}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    move-object/from16 v0, v19

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xce6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v19, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v21, 0x7f02019a

    const v22, 0x7f02019a

    const/16 v23, 0x0

    const/high16 v24, 0x7f09

    move-object/from16 v20, p0

    invoke-direct/range {v19 .. v24}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    move-object/from16 v0, v19

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xd48

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v19, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v21, 0x7f0200c3

    const v22, 0x7f0200c4

    const/16 v23, 0x0

    const v24, 0x7f090097

    move-object/from16 v20, p0

    invoke-direct/range {v19 .. v24}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    move-object/from16 v0, v19

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xd49

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v19, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v21, 0x7f0200c5

    const v22, 0x7f0200c6

    const/16 v23, 0x0

    const v24, 0x7f090096

    move-object/from16 v20, p0

    invoke-direct/range {v19 .. v24}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    move-object/from16 v0, v19

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xd4a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v19, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v21, 0x7f0200c3

    const v22, 0x7f0200c4

    const/16 v23, 0x0

    const v24, 0x7f090097

    move-object/from16 v20, p0

    invoke-direct/range {v19 .. v24}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    move-object/from16 v0, v19

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xd4b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v19, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v21, 0x7f0200c5

    const v22, 0x7f0200c6

    const/16 v23, 0x0

    const v24, 0x7f090096

    move-object/from16 v20, p0

    invoke-direct/range {v19 .. v24}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    move-object/from16 v0, v19

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xdac

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v19, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v21, 0x7f02019a

    const v22, 0x7f02019a

    const/16 v23, 0x0

    const v24, 0x7f090097

    move-object/from16 v20, p0

    invoke-direct/range {v19 .. v24}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    move-object/from16 v0, v19

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xdad

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v19, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v21, 0x7f02019a

    const v22, 0x7f02019a

    const/16 v23, 0x0

    const v24, 0x7f090096

    move-object/from16 v20, p0

    invoke-direct/range {v19 .. v24}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    move-object/from16 v0, v19

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xe10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v19, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v21, 0x7f020071

    const v22, 0x7f020072

    const/16 v23, 0x0

    const v24, 0x7f0900ea

    move-object/from16 v20, p0

    invoke-direct/range {v19 .. v24}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    move-object/from16 v0, v19

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xe11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v19, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v21, 0x7f020081

    const v22, 0x7f020082

    const/16 v23, 0x0

    const v24, 0x7f0900f2

    move-object/from16 v20, p0

    invoke-direct/range {v19 .. v24}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    move-object/from16 v0, v19

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xe12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v19, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v21, 0x7f020081

    const v22, 0x7f020082

    const/16 v23, 0x0

    const v24, 0x7f0900f2

    move-object/from16 v20, p0

    invoke-direct/range {v19 .. v24}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    move-object/from16 v0, v19

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xe13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v19, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v21, 0x7f02007f

    const v22, 0x7f020080

    const/16 v23, 0x0

    const v24, 0x7f0900f1

    move-object/from16 v20, p0

    invoke-direct/range {v19 .. v24}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    move-object/from16 v0, v19

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xe14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v19, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v21, 0x7f02007d

    const v22, 0x7f02007e

    const/16 v23, 0x0

    const v24, 0x7f0900f0

    move-object/from16 v20, p0

    invoke-direct/range {v19 .. v24}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    move-object/from16 v0, v19

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xe15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v19, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v21, 0x7f02007b

    const v22, 0x7f02007c

    const/16 v23, 0x0

    const v24, 0x7f0900ef

    move-object/from16 v20, p0

    invoke-direct/range {v19 .. v24}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    move-object/from16 v0, v19

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xe16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v19, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v21, 0x7f020079

    const v22, 0x7f02007a

    const/16 v23, 0x0

    const v24, 0x7f0900ee

    move-object/from16 v20, p0

    invoke-direct/range {v19 .. v24}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    move-object/from16 v0, v19

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xe17

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v19, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v21, 0x7f020077

    const v22, 0x7f020078

    const/16 v23, 0x0

    const v24, 0x7f0900ed

    move-object/from16 v20, p0

    invoke-direct/range {v19 .. v24}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    move-object/from16 v0, v19

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xe18

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v19, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v21, 0x7f020075

    const v22, 0x7f020076

    const/16 v23, 0x0

    const v24, 0x7f0900ec

    move-object/from16 v20, p0

    invoke-direct/range {v19 .. v24}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    move-object/from16 v0, v19

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xe19

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v19, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v21, 0x7f020073

    const v22, 0x7f020074

    const/16 v23, 0x0

    const v24, 0x7f0900eb

    move-object/from16 v20, p0

    invoke-direct/range {v19 .. v24}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    move-object/from16 v0, v19

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xe1a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v19, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v21, 0x7f020071

    const v22, 0x7f020072

    const/16 v23, 0x0

    const v24, 0x7f0900ea

    move-object/from16 v20, p0

    invoke-direct/range {v19 .. v24}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    move-object/from16 v0, v19

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xe74

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v19, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v21, 0x7f0201a2

    const v22, 0x7f0201a2

    const/16 v23, 0x0

    const v24, 0x7f0900e9

    move-object/from16 v20, p0

    invoke-direct/range {v19 .. v24}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    move-object/from16 v0, v19

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xed8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v19, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v21, 0x7f020055

    const v22, 0x7f020056

    const/16 v23, 0x0

    const v24, 0x7f090097

    move-object/from16 v20, p0

    invoke-direct/range {v19 .. v24}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    move-object/from16 v0, v19

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xed9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v19, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v21, 0x7f020057

    const v22, 0x7f020058

    const/16 v23, 0x0

    const v24, 0x7f090096

    move-object/from16 v20, p0

    invoke-direct/range {v19 .. v24}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    move-object/from16 v0, v19

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xf3c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v19, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v21, 0x7f02008d

    const v22, 0x7f02008e

    const/16 v23, 0x0

    const v24, 0x7f090097

    move-object/from16 v20, p0

    invoke-direct/range {v19 .. v24}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    move-object/from16 v0, v19

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0xf3d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v19, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v21, 0x7f02008f

    const v22, 0x7f020090

    const/16 v23, 0x0

    const v24, 0x7f090096

    move-object/from16 v20, p0

    invoke-direct/range {v19 .. v24}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    move-object/from16 v0, v19

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x1004

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v19, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v21, 0x7f02009f

    const v22, 0x7f0200a0

    const/16 v23, 0x0

    const v24, 0x7f090097

    move-object/from16 v20, p0

    invoke-direct/range {v19 .. v24}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    move-object/from16 v0, v19

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x1005

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v19, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v21, 0x7f0200a1

    const v22, 0x7f0200a2

    const/16 v23, 0x0

    const v24, 0x7f090096

    move-object/from16 v20, p0

    invoke-direct/range {v19 .. v24}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    move-object/from16 v0, v19

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x1130

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v19, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v21, 0x7f020069

    const v22, 0x7f02006a

    const/16 v23, 0x0

    const v24, 0x7f090134

    move-object/from16 v20, p0

    invoke-direct/range {v19 .. v24}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    move-object/from16 v0, v19

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x1131

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v19, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v21, 0x7f020069

    const v22, 0x7f02006a

    const/16 v23, 0x0

    const v24, 0x7f090135

    move-object/from16 v20, p0

    invoke-direct/range {v19 .. v24}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    move-object/from16 v0, v19

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x1132

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v19, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v21, 0x7f020069

    const v22, 0x7f02006a

    const/16 v23, 0x0

    const v24, 0x7f090136

    move-object/from16 v20, p0

    invoke-direct/range {v19 .. v24}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    move-object/from16 v0, v19

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x1133

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v19, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v21, 0x7f020069

    const v22, 0x7f02006a

    const/16 v23, 0x0

    const v24, 0x7f090137

    move-object/from16 v20, p0

    invoke-direct/range {v19 .. v24}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    move-object/from16 v0, v19

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x1134

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v19, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v21, 0x7f020069

    const v22, 0x7f02006a

    const/16 v23, 0x0

    const v24, 0x7f090138

    move-object/from16 v20, p0

    invoke-direct/range {v19 .. v24}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    move-object/from16 v0, v19

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x1135

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v19, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v21, 0x7f020069

    const v22, 0x7f02006a

    const/16 v23, 0x0

    const v24, 0x7f090139

    move-object/from16 v20, p0

    invoke-direct/range {v19 .. v24}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    move-object/from16 v0, v19

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v2, 0x1136

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v19, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v21, 0x7f020069

    const v22, 0x7f02006a

    const/16 v23, 0x0

    const v24, 0x7f09013a

    move-object/from16 v20, p0

    invoke-direct/range {v19 .. v24}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    move-object/from16 v0, v19

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    return-void

    .line 460
    .end local v12           #networkTitleString:I
    .end local v18           #storageString:I
    :cond_1
    const v12, 0x7f0900f8

    goto/16 :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 596
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 597
    return-void
.end method

.method public get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    .locals 2
    .parameter "commandId"

    .prologue
    .line 583
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 587
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public getResourceIDByIndex(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    .locals 2
    .parameter "index"

    .prologue
    .line 591
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 592
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    return-object v1
.end method
