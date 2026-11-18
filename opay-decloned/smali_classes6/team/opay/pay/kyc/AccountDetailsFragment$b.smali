.class public final Lteam/opay/pay/kyc/AccountDetailsFragment$b;
.super Ljava/lang/Object;
.source "AccountDetailsFragment.kt"

# interfaces
.implements Lyi3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/kyc/AccountDetailsFragment;->h1(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u001f\u0010\t\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\r\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0004\u00a8\u0006\u0010"
    }
    d2 = {
        "team/opay/pay/kyc/AccountDetailsFragment$b",
        "Lyi3;",
        "",
        "onStart",
        "()V",
        "",
        "progress",
        "",
        "total",
        "b",
        "(FJ)V",
        "",
        "path",
        "c",
        "(Ljava/lang/String;)V",
        "a",
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
.field public final synthetic a:Lteam/opay/pay/kyc/AccountDetailsFragment;


# direct methods
.method public constructor <init>(Lteam/opay/pay/kyc/AccountDetailsFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/kyc/AccountDetailsFragment$b;->a:Lteam/opay/pay/kyc/AccountDetailsFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    sget-object v0, Lteam/opay/pay/util/OpayLoadingWindow;->m:Lteam/opay/pay/util/OpayLoadingWindow$Companion;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/pay/kyc/AccountDetailsFragment$b;->a:Lteam/opay/pay/kyc/AccountDetailsFragment;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lteam/opay/pay/util/OpayLoadingWindow$Companion;->a(Landroidx/fragment/app/Fragment;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public b(FJ)V
    .locals 0

    .line 1
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "path"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/kyc/AccountDetailsFragment$b;->a:Lteam/opay/pay/kyc/AccountDetailsFragment;

    .line 7
    .line 8
    new-instance v1, Ljava/io/File;

    .line 9
    .line 10
    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Lteam/opay/pay/kyc/AccountDetailsFragment;->x0(Lteam/opay/pay/kyc/AccountDetailsFragment;Ljava/io/File;)V

    .line 14
    .line 15
    .line 16
    sget-object p1, Lteam/opay/pay/util/OpayLoadingWindow;->m:Lteam/opay/pay/util/OpayLoadingWindow$Companion;

    .line 17
    .line 18
    iget-object v0, p0, Lteam/opay/pay/kyc/AccountDetailsFragment$b;->a:Lteam/opay/pay/kyc/AccountDetailsFragment;

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Lteam/opay/pay/util/OpayLoadingWindow$Companion;->a(Landroidx/fragment/app/Fragment;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 1
    return-void
.end method
