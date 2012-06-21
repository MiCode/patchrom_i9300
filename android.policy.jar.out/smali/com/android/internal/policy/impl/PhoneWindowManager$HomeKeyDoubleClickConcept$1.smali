.class Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept$1;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;)V
    .locals 0
    .parameter

    .prologue
    .line 5604
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 5606
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HomeKeyDoubleClick"

    const-string v1, "run() is called *****************************************************"

    invoke-static {v0, v1}, Landroid/util/safelog/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5607
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;

    #calls: Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->isSingleClick()Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->access$900(Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5608
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "HomeKeyDoubleClick"

    const-string v1, "-------------------------------single clicked"

    invoke-static {v0, v1}, Landroid/util/safelog/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5609
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;

    #calls: Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->singleClickJob()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->access$1000(Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;)V

    .line 5614
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;

    #calls: Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->reset()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->access$1300(Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;)V

    .line 5615
    return-void

    .line 5610
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;

    #calls: Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->isDoubleClick()Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->access$1100(Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5611
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "HomeKeyDoubleClick"

    const-string v1, "+++++++++++++++++++++++++++++++double clicked"

    invoke-static {v0, v1}, Landroid/util/safelog/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5612
    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;

    #calls: Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->doubleClickJob()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->access$1200(Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;)V

    goto :goto_0
.end method
