.class public final Lteam/opay/abtest/ABLoginImpl;
.super Ljava/lang/Object;
.source "ABLoginImpl.kt"

# interfaces
.implements Lteam/opay/swarmfoundation/login/ILoginListener;


# annotations
.annotation build Lcom/google/auto/service/AutoService;
    value = {
        Lteam/opay/swarmfoundation/login/ILoginListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016J\u0008\u0010\u0005\u001a\u00020\u0004H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "Lteam/opay/abtest/ABLoginImpl;",
        "Lteam/opay/swarmfoundation/login/ILoginListener;",
        "()V",
        "onCancel",
        "",
        "onSuccess",
        "abtest_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


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
.method public onCancel()V
    .locals 2

    .line 1
    sget-object v0, Ln;->a:Ln;

    .line 2
    .line 3
    invoke-virtual {v0}, Ln;->c()V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lm;->a:Lm;

    .line 7
    .line 8
    const-string v1, "logout"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lm;->l(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 1
    sget-object v0, Ln;->a:Ln;

    .line 2
    .line 3
    invoke-virtual {v0}, Ln;->c()V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lm;->a:Lm;

    .line 7
    .line 8
    const-string v1, "start login"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lm;->l(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
