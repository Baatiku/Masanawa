.class public Lteam/opay/pay/transfer/AcTransferDao_Impl$a;
.super Landroidx/room/EntityInsertAdapter;
.source "AcTransferDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/transfer/AcTransferDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertAdapter<",
        "Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lteam/opay/pay/transfer/AcTransferDao_Impl;


# direct methods
.method public constructor <init>(Lteam/opay/pay/transfer/AcTransferDao_Impl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/transfer/AcTransferDao_Impl$a;->a:Lteam/opay/pay/transfer/AcTransferDao_Impl;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/room/EntityInsertAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ld2d;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ld2d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p2, Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/transfer/AcTransferDao_Impl$a;->e(Ld2d;Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const-string v0, "INSERT OR REPLACE INTO `TransferPersonsRsp` (`historyFlag`,`saveContacts`,`recentContacts`,`userId`) VALUES (?,?,?,?)"

    .line 2
    .line 3
    return-object v0
.end method

.method public e(Ld2d;Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;)V
    .locals 4
    .param p1    # Ld2d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p2}, Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;->a()Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p2}, Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;->a()Ljava/lang/Boolean;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :goto_0
    const/4 v1, 0x1

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    invoke-interface {p1, v1}, Ld2d;->l(I)V

    .line 25
    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    int-to-long v2, v0

    .line 33
    invoke-interface {p1, v1, v2, v3}, Ld2d;->c(IJ)V

    .line 34
    .line 35
    .line 36
    :goto_1
    iget-object v0, p0, Lteam/opay/pay/transfer/AcTransferDao_Impl$a;->a:Lteam/opay/pay/transfer/AcTransferDao_Impl;

    .line 37
    .line 38
    invoke-static {v0}, Lteam/opay/pay/transfer/AcTransferDao_Impl;->h(Lteam/opay/pay/transfer/AcTransferDao_Impl;)Lteam/opay/pay/transfer/AcTransferTypeConverter;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {p2}, Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;->c()Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Lteam/opay/pay/transfer/AcTransferTypeConverter;->b(Ljava/util/List;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const/4 v1, 0x2

    .line 51
    if-nez v0, :cond_2

    .line 52
    .line 53
    invoke-interface {p1, v1}, Ld2d;->l(I)V

    .line 54
    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_2
    invoke-interface {p1, v1, v0}, Ld2d;->m(ILjava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :goto_2
    iget-object v0, p0, Lteam/opay/pay/transfer/AcTransferDao_Impl$a;->a:Lteam/opay/pay/transfer/AcTransferDao_Impl;

    .line 61
    .line 62
    invoke-static {v0}, Lteam/opay/pay/transfer/AcTransferDao_Impl;->h(Lteam/opay/pay/transfer/AcTransferDao_Impl;)Lteam/opay/pay/transfer/AcTransferTypeConverter;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {p2}, Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;->b()Ljava/util/List;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v0, v1}, Lteam/opay/pay/transfer/AcTransferTypeConverter;->b(Ljava/util/List;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    const/4 v1, 0x3

    .line 75
    if-nez v0, :cond_3

    .line 76
    .line 77
    invoke-interface {p1, v1}, Ld2d;->l(I)V

    .line 78
    .line 79
    .line 80
    goto :goto_3

    .line 81
    :cond_3
    invoke-interface {p1, v1, v0}, Ld2d;->m(ILjava/lang/String;)V

    .line 82
    .line 83
    .line 84
    :goto_3
    invoke-virtual {p2}, Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;->d()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    const/4 v1, 0x4

    .line 89
    if-nez v0, :cond_4

    .line 90
    .line 91
    invoke-interface {p1, v1}, Ld2d;->l(I)V

    .line 92
    .line 93
    .line 94
    goto :goto_4

    .line 95
    :cond_4
    invoke-virtual {p2}, Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;->d()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    invoke-interface {p1, v1, p2}, Ld2d;->m(ILjava/lang/String;)V

    .line 100
    .line 101
    .line 102
    :goto_4
    return-void
.end method
