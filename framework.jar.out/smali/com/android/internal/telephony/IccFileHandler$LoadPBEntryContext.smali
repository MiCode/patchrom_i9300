.class Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;
.super Ljava/lang/Object;
.source "IccFileHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccFileHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LoadPBEntryContext"
.end annotation


# instance fields
.field countRecords:I

.field efid:I

.field loadAll:Z

.field onLoaded:Landroid/os/Message;

.field recordNum:I

.field results:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field totalRecords:I

.field usedRecords:I


# direct methods
.method constructor <init>(IILandroid/os/Message;)V
    .locals 1
    .parameter "efid"
    .parameter "recordNum"
    .parameter "onLoaded"

    .prologue
    .line 157
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput p1, p0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->efid:I

    .line 159
    iput p2, p0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->recordNum:I

    .line 160
    iput-object p3, p0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->onLoaded:Landroid/os/Message;

    .line 161
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->loadAll:Z

    .line 162
    return-void
.end method

.method constructor <init>(ILandroid/os/Message;)V
    .locals 1
    .parameter "efid"
    .parameter "onLoaded"

    .prologue
    const/4 v0, 0x1

    .line 164
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 165
    iput p1, p0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->efid:I

    .line 166
    iput v0, p0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->recordNum:I

    .line 167
    iput-boolean v0, p0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->loadAll:Z

    .line 168
    iput-object p2, p0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->onLoaded:Landroid/os/Message;

    .line 169
    return-void
.end method
