.class final Lteam/opay/spos/printer/function/DefaultPrintProvider$printSecondCueLayoutBinding$2;
.super Lkotlin/jvm/internal/Lambda;
.source "DefaultPrintProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/spos/printer/function/DefaultPrintProvider;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lpyb;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0003\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Lpyb;",
        "invoke",
        "()Lpyb;",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic this$0:Lteam/opay/spos/printer/function/DefaultPrintProvider;


# direct methods
.method public constructor <init>(Lteam/opay/spos/printer/function/DefaultPrintProvider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/spos/printer/function/DefaultPrintProvider$printSecondCueLayoutBinding$2;->this$0:Lteam/opay/spos/printer/function/DefaultPrintProvider;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/spos/printer/function/DefaultPrintProvider$printSecondCueLayoutBinding$2;->invoke()Lpyb;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lpyb;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lteam/opay/spos/printer/function/DefaultPrintProvider$printSecondCueLayoutBinding$2;->this$0:Lteam/opay/spos/printer/function/DefaultPrintProvider;

    invoke-static {v0}, Lteam/opay/spos/printer/function/DefaultPrintProvider;->access$getBinding(Lteam/opay/spos/printer/function/DefaultPrintProvider;)Lnyb;

    move-result-object v0

    iget-object v0, v0, Lnyb;->e:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lpyb;->bind(Landroid/view/View;)Lpyb;

    move-result-object v0

    const-string v1, "bind(binding.viewSecondCue.inflate())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v1, v0, Lpyb;->b:Lcom/google/android/material/button/MaterialButton;

    const-string v2, "binding.actionPrinter"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lteam/opay/spos/printer/function/DefaultPrintProvider$printSecondCueLayoutBinding$2$1;

    iget-object v3, p0, Lteam/opay/spos/printer/function/DefaultPrintProvider$printSecondCueLayoutBinding$2;->this$0:Lteam/opay/spos/printer/function/DefaultPrintProvider;

    invoke-direct {v2, v0, v3}, Lteam/opay/spos/printer/function/DefaultPrintProvider$printSecondCueLayoutBinding$2$1;-><init>(Lpyb;Lteam/opay/spos/printer/function/DefaultPrintProvider;)V

    invoke-static {v1, v2}, Lde1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 4
    iget-object v1, v0, Lpyb;->e:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v2, "binding.ivClose"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lteam/opay/spos/printer/function/DefaultPrintProvider$printSecondCueLayoutBinding$2$2;

    iget-object v3, p0, Lteam/opay/spos/printer/function/DefaultPrintProvider$printSecondCueLayoutBinding$2;->this$0:Lteam/opay/spos/printer/function/DefaultPrintProvider;

    invoke-direct {v2, v3}, Lteam/opay/spos/printer/function/DefaultPrintProvider$printSecondCueLayoutBinding$2$2;-><init>(Lteam/opay/spos/printer/function/DefaultPrintProvider;)V

    invoke-static {v1, v2}, Lde1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    return-object v0
.end method
