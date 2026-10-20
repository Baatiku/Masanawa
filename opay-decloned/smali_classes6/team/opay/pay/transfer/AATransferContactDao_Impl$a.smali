.class public Lteam/opay/pay/transfer/AATransferContactDao_Impl$a;
.super Landroidx/room/EntityInsertAdapter;
.source "AATransferContactDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/transfer/AATransferContactDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertAdapter<",
        "Lteam/opay/pay/transfer/contact/bean/TransferContactData;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lteam/opay/pay/transfer/AATransferContactDao_Impl;


# direct methods
.method public constructor <init>(Lteam/opay/pay/transfer/AATransferContactDao_Impl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/transfer/AATransferContactDao_Impl$a;->a:Lteam/opay/pay/transfer/AATransferContactDao_Impl;

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
    check-cast p2, Lteam/opay/pay/transfer/contact/bean/TransferContactData;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/transfer/AATransferContactDao_Impl$a;->e(Ld2d;Lteam/opay/pay/transfer/contact/bean/TransferContactData;)V

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
    const-string v0, "INSERT OR REPLACE INTO `TransferContactData` (`id`,`name`,`phone`,`photoUrl`,`role`,`isOPayCard`,`completedRegister`,`roleLabel`) VALUES (?,?,?,?,?,?,?,?)"

    .line 2
    .line 3
    return-object v0
.end method

.method public e(Ld2d;Lteam/opay/pay/transfer/contact/bean/TransferContactData;)V
    .locals 4
    .param p1    # Ld2d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/transfer/contact/bean/TransferContactData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p2}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getId()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-interface {p1, v1}, Ld2d;->l(I)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p2}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getId()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {p1, v1, v0}, Ld2d;->m(ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-virtual {p2}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/4 v1, 0x2

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    invoke-interface {p1, v1}, Ld2d;->l(I)V

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    invoke-virtual {p2}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-interface {p1, v1, v0}, Ld2d;->m(ILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :goto_1
    invoke-virtual {p2}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getPhone()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const/4 v1, 0x3

    .line 42
    if-nez v0, :cond_2

    .line 43
    .line 44
    invoke-interface {p1, v1}, Ld2d;->l(I)V

    .line 45
    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_2
    invoke-virtual {p2}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getPhone()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-interface {p1, v1, v0}, Ld2d;->m(ILjava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :goto_2
    invoke-virtual {p2}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getPhotoUrl()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    const/4 v1, 0x4

    .line 60
    if-nez v0, :cond_3

    .line 61
    .line 62
    invoke-interface {p1, v1}, Ld2d;->l(I)V

    .line 63
    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_3
    invoke-virtual {p2}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getPhotoUrl()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-interface {p1, v1, v0}, Ld2d;->m(ILjava/lang/String;)V

    .line 71
    .line 72
    .line 73
    :goto_3
    invoke-virtual {p2}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getRole()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    const/4 v1, 0x5

    .line 78
    if-nez v0, :cond_4

    .line 79
    .line 80
    invoke-interface {p1, v1}, Ld2d;->l(I)V

    .line 81
    .line 82
    .line 83
    goto :goto_4

    .line 84
    :cond_4
    invoke-virtual {p2}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getRole()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-interface {p1, v1, v0}, Ld2d;->m(ILjava/lang/String;)V

    .line 89
    .line 90
    .line 91
    :goto_4
    invoke-virtual {p2}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->isOPayCard()Ljava/lang/Boolean;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    if-nez v0, :cond_5

    .line 96
    .line 97
    const/4 v0, 0x0

    .line 98
    goto :goto_5

    .line 99
    :cond_5
    invoke-virtual {p2}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->isOPayCard()Ljava/lang/Boolean;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    :goto_5
    const/4 v1, 0x6

    .line 112
    if-nez v0, :cond_6

    .line 113
    .line 114
    invoke-interface {p1, v1}, Ld2d;->l(I)V

    .line 115
    .line 116
    .line 117
    goto :goto_6

    .line 118
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    int-to-long v2, v0

    .line 123
    invoke-interface {p1, v1, v2, v3}, Ld2d;->c(IJ)V

    .line 124
    .line 125
    .line 126
    :goto_6
    invoke-virtual {p2}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getCompletedRegister()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    const/4 v1, 0x7

    .line 131
    if-nez v0, :cond_7

    .line 132
    .line 133
    invoke-interface {p1, v1}, Ld2d;->l(I)V

    .line 134
    .line 135
    .line 136
    goto :goto_7

    .line 137
    :cond_7
    invoke-virtual {p2}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getCompletedRegister()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-interface {p1, v1, v0}, Ld2d;->m(ILjava/lang/String;)V

    .line 142
    .line 143
    .line 144
    :goto_7
    invoke-virtual {p2}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getRoleLabel()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    const/16 v1, 0x8

    .line 149
    .line 150
    if-nez v0, :cond_8

    .line 151
    .line 152
    invoke-interface {p1, v1}, Ld2d;->l(I)V

    .line 153
    .line 154
    .line 155
    goto :goto_8

    .line 156
    :cond_8
    invoke-virtual {p2}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getRoleLabel()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p2

    .line 160
    invoke-interface {p1, v1, p2}, Ld2d;->m(ILjava/lang/String;)V

    .line 161
    .line 162
    .line 163
    :goto_8
    return-void
.end method
