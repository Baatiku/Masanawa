.class public abstract Lteam/opay/pay/home/clipboard/ClipboardParser;
.super Ljava/lang/Object;
.source "ClipboardIntent.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008&\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J*\u0010\n\u001a\u0004\u0018\u00010\u00002\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u00a6@\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0019\u0010\r\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u0007\u001a\u00020\u0006H&\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0015\u0010\u0010\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0000\u00a2\u0006\u0004\u0008\u0010\u0010\u0011R$\u0010\u000f\u001a\u0004\u0018\u00010\u00008\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008\r\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u0017"
    }
    d2 = {
        "Lteam/opay/pay/home/clipboard/ClipboardParser;",
        "",
        "<init>",
        "()V",
        "",
        "text",
        "Landroidx/fragment/app/Fragment;",
        "fragment",
        "",
        "time",
        "c",
        "(Ljava/lang/String;Landroidx/fragment/app/Fragment;JLjr2;)Ljava/lang/Object;",
        "Landroidx/fragment/app/DialogFragment;",
        "a",
        "(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/DialogFragment;",
        "next",
        "e",
        "(Lteam/opay/pay/home/clipboard/ClipboardParser;)Lteam/opay/pay/home/clipboard/ClipboardParser;",
        "Lteam/opay/pay/home/clipboard/ClipboardParser;",
        "b",
        "()Lteam/opay/pay/home/clipboard/ClipboardParser;",
        "d",
        "(Lteam/opay/pay/home/clipboard/ClipboardParser;)V",
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
.field public a:Lteam/opay/pay/home/clipboard/ClipboardParser;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public abstract a(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/DialogFragment;
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public b()Lteam/opay/pay/home/clipboard/ClipboardParser;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/clipboard/ClipboardParser;->a:Lteam/opay/pay/home/clipboard/ClipboardParser;

    .line 2
    .line 3
    return-object v0
.end method

.method public abstract c(Ljava/lang/String;Landroidx/fragment/app/Fragment;JLjr2;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/fragment/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljr2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/fragment/app/Fragment;",
            "J",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/home/clipboard/ClipboardParser;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public d(Lteam/opay/pay/home/clipboard/ClipboardParser;)V
    .locals 0
    .param p1    # Lteam/opay/pay/home/clipboard/ClipboardParser;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/home/clipboard/ClipboardParser;->a:Lteam/opay/pay/home/clipboard/ClipboardParser;

    .line 2
    .line 3
    return-void
.end method

.method public final e(Lteam/opay/pay/home/clipboard/ClipboardParser;)Lteam/opay/pay/home/clipboard/ClipboardParser;
    .locals 1
    .param p1    # Lteam/opay/pay/home/clipboard/ClipboardParser;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "next"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lteam/opay/pay/home/clipboard/ClipboardParser;->d(Lteam/opay/pay/home/clipboard/ClipboardParser;)V

    .line 7
    .line 8
    .line 9
    return-object p1
.end method
