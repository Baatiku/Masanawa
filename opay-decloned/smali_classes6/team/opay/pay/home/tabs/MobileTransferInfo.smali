.class public final Lteam/opay/pay/home/tabs/MobileTransferInfo;
.super Ljava/lang/Object;
.source "MobileTransferViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/home/tabs/MobileTransferInfo$DEDUCT;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u001d\u0018\u00002\u00020\u0001:\u0001&B?\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000c\u0010\rR$\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\"\u0010\u0005\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\"\u0010\u0006\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0016\u0010\u0015\u001a\u0004\u0008\u000e\u0010\u0017\"\u0004\u0008\u001a\u0010\u0019R\"\u0010\u0007\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001a\u0010\u0015\u001a\u0004\u0008\u0014\u0010\u0017\"\u0004\u0008\u001b\u0010\u0019R$\u0010\t\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R\"\u0010\u000b\u001a\u00020\n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0018\u0010!\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%\u00a8\u0006\'"
    }
    d2 = {
        "Lteam/opay/pay/home/tabs/MobileTransferInfo;",
        "",
        "Lteam/opay/core/api/GraphQL$OPayAccountUser;",
        "recipientInfo",
        "",
        "recipientPhone",
        "amount",
        "message",
        "Lteam/opay/core/android/money/MoneyAmount;",
        "fee",
        "Lteam/opay/pay/home/tabs/MobileTransferInfo$DEDUCT;",
        "deduct",
        "<init>",
        "(Lteam/opay/core/api/GraphQL$OPayAccountUser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/android/money/MoneyAmount;Lteam/opay/pay/home/tabs/MobileTransferInfo$DEDUCT;)V",
        "a",
        "Lteam/opay/core/api/GraphQL$OPayAccountUser;",
        "getRecipientInfo",
        "()Lteam/opay/core/api/GraphQL$OPayAccountUser;",
        "setRecipientInfo",
        "(Lteam/opay/core/api/GraphQL$OPayAccountUser;)V",
        "b",
        "Ljava/lang/String;",
        "c",
        "()Ljava/lang/String;",
        "f",
        "(Ljava/lang/String;)V",
        "d",
        "e",
        "Lteam/opay/core/android/money/MoneyAmount;",
        "getFee",
        "()Lteam/opay/core/android/money/MoneyAmount;",
        "setFee",
        "(Lteam/opay/core/android/money/MoneyAmount;)V",
        "Lteam/opay/pay/home/tabs/MobileTransferInfo$DEDUCT;",
        "getDeduct",
        "()Lteam/opay/pay/home/tabs/MobileTransferInfo$DEDUCT;",
        "setDeduct",
        "(Lteam/opay/pay/home/tabs/MobileTransferInfo$DEDUCT;)V",
        "DEDUCT",
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
.field public a:Lteam/opay/core/api/GraphQL$OPayAccountUser;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public d:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public e:Lteam/opay/core/android/money/MoneyAmount;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public f:Lteam/opay/pay/home/tabs/MobileTransferInfo$DEDUCT;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lteam/opay/core/api/GraphQL$OPayAccountUser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/android/money/MoneyAmount;Lteam/opay/pay/home/tabs/MobileTransferInfo$DEDUCT;)V
    .locals 1
    .param p1    # Lteam/opay/core/api/GraphQL$OPayAccountUser;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lteam/opay/core/android/money/MoneyAmount;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lteam/opay/pay/home/tabs/MobileTransferInfo$DEDUCT;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "recipientPhone"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "amount"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deduct"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lteam/opay/pay/home/tabs/MobileTransferInfo;->a:Lteam/opay/core/api/GraphQL$OPayAccountUser;

    .line 3
    iput-object p2, p0, Lteam/opay/pay/home/tabs/MobileTransferInfo;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lteam/opay/pay/home/tabs/MobileTransferInfo;->c:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lteam/opay/pay/home/tabs/MobileTransferInfo;->d:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lteam/opay/pay/home/tabs/MobileTransferInfo;->e:Lteam/opay/core/android/money/MoneyAmount;

    .line 7
    iput-object p6, p0, Lteam/opay/pay/home/tabs/MobileTransferInfo;->f:Lteam/opay/pay/home/tabs/MobileTransferInfo$DEDUCT;

    return-void
.end method

.method public synthetic constructor <init>(Lteam/opay/core/api/GraphQL$OPayAccountUser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/android/money/MoneyAmount;Lteam/opay/pay/home/tabs/MobileTransferInfo$DEDUCT;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_0

    const/4 p5, 0x0

    :cond_0
    move-object v5, p5

    and-int/lit8 p5, p7, 0x20

    if-eqz p5, :cond_1

    .line 8
    sget-object p6, Lteam/opay/pay/home/tabs/MobileTransferInfo$DEDUCT;->OTHER:Lteam/opay/pay/home/tabs/MobileTransferInfo$DEDUCT;

    :cond_1
    move-object v6, p6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 9
    invoke-direct/range {v0 .. v6}, Lteam/opay/pay/home/tabs/MobileTransferInfo;-><init>(Lteam/opay/core/api/GraphQL$OPayAccountUser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/android/money/MoneyAmount;Lteam/opay/pay/home/tabs/MobileTransferInfo$DEDUCT;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/tabs/MobileTransferInfo;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/tabs/MobileTransferInfo;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/tabs/MobileTransferInfo;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/pay/home/tabs/MobileTransferInfo;->c:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/pay/home/tabs/MobileTransferInfo;->d:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/pay/home/tabs/MobileTransferInfo;->b:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method
