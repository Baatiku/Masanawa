.class public final Lteam/opay/spos/printer/function/BasePrintProviderFragment$printCallBack$1;
.super Ljava/lang/Object;
.source "BasePrintProviderFragment.kt"

# interfaces
.implements Lkyb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/spos/printer/function/BasePrintProviderFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\'\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "team/opay/spos/printer/function/BasePrintProviderFragment$printCallBack$1",
        "Lkyb;",
        "",
        "code",
        "",
        "message",
        "deviceCode",
        "",
        "a",
        "(ILjava/lang/String;I)V",
        "spos-printer_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Lteam/opay/spos/printer/function/BasePrintProviderFragment;


# direct methods
.method public constructor <init>(Lteam/opay/spos/printer/function/BasePrintProviderFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/spos/printer/function/BasePrintProviderFragment$printCallBack$1;->a:Lteam/opay/spos/printer/function/BasePrintProviderFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;I)V
    .locals 3
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "message"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lteam/opay/spos/printer/function/BasePrintProviderFragment$printCallBack$1$onPrintResult$1;

    .line 7
    .line 8
    iget-object v1, p0, Lteam/opay/spos/printer/function/BasePrintProviderFragment$printCallBack$1;->a:Lteam/opay/spos/printer/function/BasePrintProviderFragment;

    .line 9
    .line 10
    invoke-direct {v0, v1, p1, p3, p2}, Lteam/opay/spos/printer/function/BasePrintProviderFragment$printCallBack$1$onPrintResult$1;-><init>(Lteam/opay/spos/printer/function/BasePrintProviderFragment;IILjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    const/4 p2, 0x0

    .line 15
    const-wide/16 v1, 0x0

    .line 16
    .line 17
    invoke-static {v1, v2, v0, p1, p2}, Lgke;->d(JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    return-void
.end method
