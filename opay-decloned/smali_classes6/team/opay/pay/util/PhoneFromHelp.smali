.class public final Lteam/opay/pay/util/PhoneFromHelp;
.super Ljava/lang/Object;
.source "PhoneFromHelp.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\t\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\r\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0015\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0015\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u000b\u0010\nJ\u0015\u0010\u000c\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u000c\u0010\nJ\u0017\u0010\r\u001a\u00020\u00082\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\r\u0010\nJ\u0015\u0010\u000e\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u000e\u0010\nJ\u0015\u0010\u000f\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u000f\u0010\nJ\u0015\u0010\u0010\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0010\u0010\nJ\u0015\u0010\u0011\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0011\u0010\nJ\u0015\u0010\u0012\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0012\u0010\nJ\u0015\u0010\u0013\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0013\u0010\nJ\u0015\u0010\u0014\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0014\u0010\nJ\u0019\u0010\u0016\u001a\u00020\u00152\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0004H\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0017R$\u0010\u001b\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000e\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u0006\"\u0004\u0008\u001a\u0010\nR\u0018\u0010\u001c\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u0018R\u0016\u0010\u001d\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\u0018\u00a8\u0006\u001e"
    }
    d2 = {
        "Lteam/opay/pay/util/PhoneFromHelp;",
        "",
        "<init>",
        "()V",
        "",
        "h",
        "()Ljava/lang/String;",
        "p",
        "",
        "f",
        "(Ljava/lang/String;)V",
        "b",
        "c",
        "g",
        "a",
        "d",
        "e",
        "j",
        "k",
        "m",
        "n",
        "",
        "i",
        "(Ljava/lang/String;)Z",
        "Ljava/lang/String;",
        "getServiceType",
        "l",
        "serviceType",
        "phone",
        "from",
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
.field public a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public c:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lteam/opay/pay/util/PhoneFromHelp;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v0, p0, Lteam/opay/pay/util/PhoneFromHelp;->c:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "p"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/pay/util/PhoneFromHelp;->b:Ljava/lang/String;

    .line 7
    .line 8
    iget-object p1, p0, Lteam/opay/pay/util/PhoneFromHelp;->a:Ljava/lang/String;

    .line 9
    .line 10
    sget-object v0, Lteam/opay/core/api/GraphQL$ServiceType;->DATA:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 11
    .line 12
    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL$ServiceType;->getValue()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    const-string p1, "DATA_Select_AddressBook_Number"

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const-string p1, "AIRTIME_Select_AddressBook_Number"

    .line 26
    .line 27
    :goto_0
    iput-object p1, p0, Lteam/opay/pay/util/PhoneFromHelp;->c:Ljava/lang/String;

    .line 28
    .line 29
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "p"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/pay/util/PhoneFromHelp;->b:Ljava/lang/String;

    .line 7
    .line 8
    iget-object p1, p0, Lteam/opay/pay/util/PhoneFromHelp;->a:Ljava/lang/String;

    .line 9
    .line 10
    sget-object v0, Lteam/opay/core/api/GraphQL$ServiceType;->DATA:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 11
    .line 12
    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL$ServiceType;->getValue()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    const-string p1, "DATA_Default_Number"

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const-string p1, "AIRTIME_Default_Number"

    .line 26
    .line 27
    :goto_0
    iput-object p1, p0, Lteam/opay/pay/util/PhoneFromHelp;->c:Ljava/lang/String;

    .line 28
    .line 29
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "p"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/util/PhoneFromHelp;->b:Ljava/lang/String;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const-string v0, ""

    .line 11
    .line 12
    :cond_0
    invoke-static {v0}, Lxob;->k(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {p1}, Lxob;->k(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    iput-object p1, p0, Lteam/opay/pay/util/PhoneFromHelp;->b:Ljava/lang/String;

    .line 27
    .line 28
    iget-object p1, p0, Lteam/opay/pay/util/PhoneFromHelp;->a:Ljava/lang/String;

    .line 29
    .line 30
    sget-object v0, Lteam/opay/core/api/GraphQL$ServiceType;->DATA:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 31
    .line 32
    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL$ServiceType;->getValue()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_1

    .line 41
    .line 42
    const-string p1, "DATA_Enter_New_Number"

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const-string p1, "AIRTIME_Enter_New_Number"

    .line 46
    .line 47
    :goto_0
    iput-object p1, p0, Lteam/opay/pay/util/PhoneFromHelp;->c:Ljava/lang/String;

    .line 48
    .line 49
    :cond_2
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "p"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/pay/util/PhoneFromHelp;->b:Ljava/lang/String;

    .line 7
    .line 8
    iget-object p1, p0, Lteam/opay/pay/util/PhoneFromHelp;->a:Ljava/lang/String;

    .line 9
    .line 10
    sget-object v0, Lteam/opay/core/api/GraphQL$ServiceType;->DATA:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 11
    .line 12
    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL$ServiceType;->getValue()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    const-string p1, "DATA_Select_Historical_Number_0"

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const-string p1, "AIRTIME_Select_Historical_Number_0"

    .line 26
    .line 27
    :goto_0
    iput-object p1, p0, Lteam/opay/pay/util/PhoneFromHelp;->c:Ljava/lang/String;

    .line 28
    .line 29
    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "p"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/pay/util/PhoneFromHelp;->b:Ljava/lang/String;

    .line 7
    .line 8
    iget-object p1, p0, Lteam/opay/pay/util/PhoneFromHelp;->a:Ljava/lang/String;

    .line 9
    .line 10
    sget-object v0, Lteam/opay/core/api/GraphQL$ServiceType;->DATA:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 11
    .line 12
    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL$ServiceType;->getValue()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    const-string p1, "DATA_Select_Historical_Number_1"

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const-string p1, "AIRTIME_Select_Historical_Number_1"

    .line 26
    .line 27
    :goto_0
    iput-object p1, p0, Lteam/opay/pay/util/PhoneFromHelp;->c:Ljava/lang/String;

    .line 28
    .line 29
    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "p"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/pay/util/PhoneFromHelp;->b:Ljava/lang/String;

    .line 7
    .line 8
    iget-object p1, p0, Lteam/opay/pay/util/PhoneFromHelp;->a:Ljava/lang/String;

    .line 9
    .line 10
    sget-object v0, Lteam/opay/core/api/GraphQL$ServiceType;->DATA:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 11
    .line 12
    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL$ServiceType;->getValue()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    const-string p1, "DATA_link_Number"

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const-string p1, "AIRTIME_link_Number"

    .line 26
    .line 27
    :goto_0
    iput-object p1, p0, Lteam/opay/pay/util/PhoneFromHelp;->c:Ljava/lang/String;

    .line 28
    .line 29
    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/pay/util/PhoneFromHelp;->i(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iput-object p1, p0, Lteam/opay/pay/util/PhoneFromHelp;->b:Ljava/lang/String;

    .line 9
    .line 10
    iget-object p1, p0, Lteam/opay/pay/util/PhoneFromHelp;->a:Ljava/lang/String;

    .line 11
    .line 12
    sget-object v0, Lteam/opay/core/api/GraphQL$ServiceType;->DATA:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 13
    .line 14
    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL$ServiceType;->getValue()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    const-string p1, "DATA_PasteBoard_Enter_New_Number"

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const-string p1, "AIRTIME_PasteBoard_Enter_New_Number"

    .line 28
    .line 29
    :goto_0
    iput-object p1, p0, Lteam/opay/pay/util/PhoneFromHelp;->c:Ljava/lang/String;

    .line 30
    .line 31
    return-void
.end method

.method public final h()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/util/PhoneFromHelp;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final i(Ljava/lang/String;)Z
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x2

    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-static {p1, v1, v0, v1}, Lxob;->q(Ljava/lang/String;Lteam/opay/core/api/Country;ILjava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    return p1

    .line 17
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 18
    return p1
.end method

.method public final j(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "p"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/pay/util/PhoneFromHelp;->b:Ljava/lang/String;

    .line 7
    .line 8
    iget-object p1, p0, Lteam/opay/pay/util/PhoneFromHelp;->a:Ljava/lang/String;

    .line 9
    .line 10
    sget-object v0, Lteam/opay/core/api/GraphQL$ServiceType;->DATA:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 11
    .line 12
    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL$ServiceType;->getValue()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    const-string p1, "DATA_Popup_Default_Number"

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const-string p1, "AIRTIME_Popup_Default_Number"

    .line 26
    .line 27
    :goto_0
    iput-object p1, p0, Lteam/opay/pay/util/PhoneFromHelp;->c:Ljava/lang/String;

    .line 28
    .line 29
    return-void
.end method

.method public final k(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "p"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lteam/opay/pay/util/PhoneFromHelp;->i(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lteam/opay/pay/util/PhoneFromHelp;->b:Ljava/lang/String;

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    const-string v0, ""

    .line 18
    .line 19
    :cond_1
    invoke-static {v0}, Lxob;->k(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {p1}, Lxob;->k(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_3

    .line 32
    .line 33
    iput-object p1, p0, Lteam/opay/pay/util/PhoneFromHelp;->b:Ljava/lang/String;

    .line 34
    .line 35
    iget-object p1, p0, Lteam/opay/pay/util/PhoneFromHelp;->a:Ljava/lang/String;

    .line 36
    .line 37
    sget-object v0, Lteam/opay/core/api/GraphQL$ServiceType;->DATA:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 38
    .line 39
    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL$ServiceType;->getValue()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_2

    .line 48
    .line 49
    const-string p1, "DATA_Popup_Enter_New_Number"

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    const-string p1, "AIRTIME_Popup_Enter_New_Number"

    .line 53
    .line 54
    :goto_0
    iput-object p1, p0, Lteam/opay/pay/util/PhoneFromHelp;->c:Ljava/lang/String;

    .line 55
    .line 56
    :cond_3
    return-void
.end method

.method public final l(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/util/PhoneFromHelp;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final m(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "p"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/pay/util/PhoneFromHelp;->b:Ljava/lang/String;

    .line 7
    .line 8
    const-string p1, "DATA_Special_Popup_Default_Number"

    .line 9
    .line 10
    iput-object p1, p0, Lteam/opay/pay/util/PhoneFromHelp;->c:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method public final n(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "p"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lteam/opay/pay/util/PhoneFromHelp;->i(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lteam/opay/pay/util/PhoneFromHelp;->b:Ljava/lang/String;

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    const-string v0, ""

    .line 18
    .line 19
    :cond_1
    invoke-static {v0}, Lxob;->k(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {p1}, Lxob;->k(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    iput-object p1, p0, Lteam/opay/pay/util/PhoneFromHelp;->b:Ljava/lang/String;

    .line 34
    .line 35
    const-string p1, "DATA_Special_Popup_Enter_New_Number"

    .line 36
    .line 37
    iput-object p1, p0, Lteam/opay/pay/util/PhoneFromHelp;->c:Ljava/lang/String;

    .line 38
    .line 39
    :cond_2
    return-void
.end method
