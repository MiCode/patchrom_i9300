.class Landroid/mtp/MediaObject;
.super Ljava/lang/Object;
.source "MTPJNIInterface.java"


# instance fields
.field public album:Ljava/lang/String;

.field public artist:Ljava/lang/String;

.field public composer:Ljava/lang/String;

.field public creationDate:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public duration:I

.field public filename:Ljava/lang/String;

.field public genreName:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public language:Ljava/lang/String;

.field public latitude:Ljava/lang/String;

.field public longitude:Ljava/lang/String;

.field public mimeType:Ljava/lang/String;

.field public modificationDate:Ljava/lang/String;

.field public path:Ljava/lang/String;

.field public size:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public year:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 751
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 732
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MediaObject;->title:Ljava/lang/String;

    .line 733
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MediaObject;->album:Ljava/lang/String;

    .line 734
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MediaObject;->filename:Ljava/lang/String;

    .line 735
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MediaObject;->id:Ljava/lang/String;

    .line 737
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MediaObject;->size:Ljava/lang/String;

    .line 738
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MediaObject;->mimeType:Ljava/lang/String;

    .line 739
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MediaObject;->artist:Ljava/lang/String;

    .line 740
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MediaObject;->composer:Ljava/lang/String;

    .line 742
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MediaObject;->description:Ljava/lang/String;

    .line 743
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MediaObject;->language:Ljava/lang/String;

    .line 744
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MediaObject;->longitude:Ljava/lang/String;

    .line 745
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MediaObject;->latitude:Ljava/lang/String;

    .line 746
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MediaObject;->creationDate:Ljava/lang/String;

    .line 747
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MediaObject;->path:Ljava/lang/String;

    .line 748
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MediaObject;->modificationDate:Ljava/lang/String;

    .line 749
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MediaObject;->genreName:Ljava/lang/String;

    .line 752
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Inside MediaObject Constructor"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 753
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "filename"
    .parameter "album"
    .parameter "artist"
    .parameter "composer"
    .parameter "creationDate"
    .parameter "description"
    .parameter "duration"
    .parameter "id"
    .parameter "language"
    .parameter "latitude"
    .parameter "longitude"
    .parameter "mimeType"
    .parameter "modificationDate"
    .parameter "path"
    .parameter "size"
    .parameter "title"
    .parameter "year"
    .parameter "genreName"

    .prologue
    .line 757
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 732
    const-string v1, ""

    iput-object v1, p0, Landroid/mtp/MediaObject;->title:Ljava/lang/String;

    .line 733
    const-string v1, ""

    iput-object v1, p0, Landroid/mtp/MediaObject;->album:Ljava/lang/String;

    .line 734
    const-string v1, ""

    iput-object v1, p0, Landroid/mtp/MediaObject;->filename:Ljava/lang/String;

    .line 735
    const-string v1, ""

    iput-object v1, p0, Landroid/mtp/MediaObject;->id:Ljava/lang/String;

    .line 737
    const-string v1, ""

    iput-object v1, p0, Landroid/mtp/MediaObject;->size:Ljava/lang/String;

    .line 738
    const-string v1, ""

    iput-object v1, p0, Landroid/mtp/MediaObject;->mimeType:Ljava/lang/String;

    .line 739
    const-string v1, ""

    iput-object v1, p0, Landroid/mtp/MediaObject;->artist:Ljava/lang/String;

    .line 740
    const-string v1, ""

    iput-object v1, p0, Landroid/mtp/MediaObject;->composer:Ljava/lang/String;

    .line 742
    const-string v1, ""

    iput-object v1, p0, Landroid/mtp/MediaObject;->description:Ljava/lang/String;

    .line 743
    const-string v1, ""

    iput-object v1, p0, Landroid/mtp/MediaObject;->language:Ljava/lang/String;

    .line 744
    const-string v1, ""

    iput-object v1, p0, Landroid/mtp/MediaObject;->longitude:Ljava/lang/String;

    .line 745
    const-string v1, ""

    iput-object v1, p0, Landroid/mtp/MediaObject;->latitude:Ljava/lang/String;

    .line 746
    const-string v1, ""

    iput-object v1, p0, Landroid/mtp/MediaObject;->creationDate:Ljava/lang/String;

    .line 747
    const-string v1, ""

    iput-object v1, p0, Landroid/mtp/MediaObject;->path:Ljava/lang/String;

    .line 748
    const-string v1, ""

    iput-object v1, p0, Landroid/mtp/MediaObject;->modificationDate:Ljava/lang/String;

    .line 749
    const-string v1, ""

    iput-object v1, p0, Landroid/mtp/MediaObject;->genreName:Ljava/lang/String;

    .line 758
    iput-object p1, p0, Landroid/mtp/MediaObject;->filename:Ljava/lang/String;

    .line 759
    iput-object p2, p0, Landroid/mtp/MediaObject;->album:Ljava/lang/String;

    .line 760
    iput-object p3, p0, Landroid/mtp/MediaObject;->artist:Ljava/lang/String;

    .line 761
    iput-object p4, p0, Landroid/mtp/MediaObject;->composer:Ljava/lang/String;

    .line 762
    iput-object p5, p0, Landroid/mtp/MediaObject;->creationDate:Ljava/lang/String;

    .line 763
    iput-object p6, p0, Landroid/mtp/MediaObject;->description:Ljava/lang/String;

    .line 764
    if-eqz p7, :cond_0

    .line 765
    invoke-static {p7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/mtp/MediaObject;->duration:I

    .line 769
    :goto_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Duration:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/mtp/MediaObject;->duration:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 770
    iput-object p8, p0, Landroid/mtp/MediaObject;->id:Ljava/lang/String;

    .line 771
    iput-object p9, p0, Landroid/mtp/MediaObject;->language:Ljava/lang/String;

    .line 772
    iput-object p10, p0, Landroid/mtp/MediaObject;->latitude:Ljava/lang/String;

    .line 773
    iput-object p11, p0, Landroid/mtp/MediaObject;->longitude:Ljava/lang/String;

    .line 774
    move-object/from16 v0, p12

    iput-object v0, p0, Landroid/mtp/MediaObject;->mimeType:Ljava/lang/String;

    .line 775
    move-object/from16 v0, p13

    iput-object v0, p0, Landroid/mtp/MediaObject;->modificationDate:Ljava/lang/String;

    .line 776
    move-object/from16 v0, p14

    iput-object v0, p0, Landroid/mtp/MediaObject;->path:Ljava/lang/String;

    .line 777
    move-object/from16 v0, p15

    iput-object v0, p0, Landroid/mtp/MediaObject;->size:Ljava/lang/String;

    .line 778
    move-object/from16 v0, p16

    iput-object v0, p0, Landroid/mtp/MediaObject;->title:Ljava/lang/String;

    .line 779
    if-eqz p17, :cond_1

    .line 780
    invoke-static/range {p17 .. p17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/mtp/MediaObject;->year:I

    .line 784
    :goto_1
    move-object/from16 v0, p18

    iput-object v0, p0, Landroid/mtp/MediaObject;->genreName:Ljava/lang/String;

    .line 785
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Genre:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/mtp/MediaObject;->genreName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 786
    return-void

    .line 767
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Landroid/mtp/MediaObject;->duration:I

    goto :goto_0

    .line 782
    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Landroid/mtp/MediaObject;->year:I

    goto :goto_1
.end method
