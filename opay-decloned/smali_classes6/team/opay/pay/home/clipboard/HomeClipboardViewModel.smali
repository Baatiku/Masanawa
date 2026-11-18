.class public final Lteam/opay/pay/home/clipboard/HomeClipboardViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "HomeClipboardViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R$\u0010\u000b\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0005\u0010\u0006\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\n\u00a8\u0006\u000c"
    }
    d2 = {
        "Lteam/opay/pay/home/clipboard/HomeClipboardViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "<init>",
        "()V",
        "Lteam/opay/pay/home/clipboard/parser/ClipboardBankLookupResult;",
        "a",
        "Lteam/opay/pay/home/clipboard/parser/ClipboardBankLookupResult;",
        "q",
        "()Lteam/opay/pay/home/clipboard/parser/ClipboardBankLookupResult;",
        "r",
        "(Lteam/opay/pay/home/clipboard/parser/ClipboardBankLookupResult;)V",
        "bankLookupResult",
        "sdk_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public a:Lteam/opay/pay/home/clipboard/parser/ClipboardBankLookupResult;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final q()Lteam/opay/pay/home/clipboard/parser/ClipboardBankLookupResult;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/clipboard/HomeClipboardViewModel;->a:Lteam/opay/pay/home/clipboard/parser/ClipboardBankLookupResult;

    .line 2
    .line 3
    return-object v0
.end method

.method public final r(Lteam/opay/pay/home/clipboard/parser/ClipboardBankLookupResult;)V
    .locals 0
    .param p1    # Lteam/opay/pay/home/clipboard/parser/ClipboardBankLookupResult;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/home/clipboard/HomeClipboardViewModel;->a:Lteam/opay/pay/home/clipboard/parser/ClipboardBankLookupResult;

    .line 2
    .line 3
    return-void
.end method
