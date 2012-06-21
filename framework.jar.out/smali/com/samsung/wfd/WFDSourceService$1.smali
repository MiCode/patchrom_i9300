.class Lcom/samsung/wfd/WFDSourceService$1;
.super Lcom/samsung/wfd/IWfdSourceService$Stub;
.source "WFDSourceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wfd/WFDSourceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/wfd/WFDSourceService;


# direct methods
.method constructor <init>(Lcom/samsung/wfd/WFDSourceService;)V
    .locals 0
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/samsung/wfd/WFDSourceService$1;->this$0:Lcom/samsung/wfd/WFDSourceService;

    invoke-direct {p0}, Lcom/samsung/wfd/IWfdSourceService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public WFDPostSubtitle(Ljava/lang/String;I)Z
    .locals 1
    .parameter "subtitle"
    .parameter "nFontSize"

    .prologue
    .line 134
    invoke-static {p1, p2}, Lcom/samsung/wfd/WFDNative;->WFDPostSubtitle(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public WFDSetSubtitleStatus(Z)Z
    .locals 3
    .parameter "bStatus"

    .prologue
    .line 138
    const-string v0, "WFDSourceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set subtitle status : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-static {p1}, Lcom/samsung/wfd/WFDNative;->WFDSetSubtitleStatus(Z)Z

    move-result v0

    return v0
.end method
