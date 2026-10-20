.class public final Lteam/opay/pay/payment/betting/MoreBannerListFragment$Companion;
.super Ljava/lang/Object;
.source "MoreBannerListFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/pay/payment/betting/MoreBannerListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J%\u0010\n\u001a\u00020\t2\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\n\u0010\u000bR\u0014\u0010\u000c\u001a\u00020\u00078\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lteam/opay/pay/payment/betting/MoreBannerListFragment$Companion;",
        "",
        "<init>",
        "()V",
        "",
        "Lteam/opay/odialog/net/AdDataItem;",
        "list",
        "",
        "adpCode",
        "Lteam/opay/pay/payment/betting/MoreBannerListFragment;",
        "a",
        "(Ljava/util/List;Ljava/lang/String;)Lteam/opay/pay/payment/betting/MoreBannerListFragment;",
        "KEY_DATA",
        "Ljava/lang/String;",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/payment/betting/MoreBannerListFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Ljava/lang/String;)Lteam/opay/pay/payment/betting/MoreBannerListFragment;
    .locals 18
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lteam/opay/odialog/net/AdDataItem;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lteam/opay/pay/payment/betting/MoreBannerListFragment;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "list"

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Landroid/os/Bundle;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance v2, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_0

    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    check-cast v3, Lteam/opay/odialog/net/AdDataItem;

    .line 33
    .line 34
    new-instance v15, Lteam/opay/pay/payment/betting/MoreBannerListAdapterBean;

    .line 35
    .line 36
    invoke-virtual {v3}, Lteam/opay/odialog/net/AdDataItem;->getId()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    invoke-virtual {v3}, Lteam/opay/odialog/net/AdDataItem;->getTitle()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    invoke-virtual {v3}, Lteam/opay/odialog/net/AdDataItem;->getImg_url()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v7

    .line 48
    invoke-virtual {v3}, Lteam/opay/odialog/net/AdDataItem;->getDiverseImgUrl()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v8

    .line 52
    invoke-virtual {v3}, Lteam/opay/odialog/net/AdDataItem;->getDesc()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v9

    .line 56
    invoke-virtual {v3}, Lteam/opay/odialog/net/AdDataItem;->getRichDesc()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v10

    .line 60
    invoke-virtual {v3}, Lteam/opay/odialog/net/AdDataItem;->getAction()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v11

    .line 64
    invoke-virtual {v3}, Lteam/opay/odialog/net/AdDataItem;->getActionTitle()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v12

    .line 68
    invoke-virtual {v3}, Lteam/opay/odialog/net/AdDataItem;->getCallbackShow()Ljava/lang/Boolean;

    .line 69
    .line 70
    .line 71
    move-result-object v13

    .line 72
    const/16 v16, 0x200

    .line 73
    .line 74
    const/16 v17, 0x0

    .line 75
    .line 76
    const/4 v14, 0x0

    .line 77
    move-object v4, v15

    .line 78
    move-object v3, v15

    .line 79
    move-object/from16 v15, p2

    .line 80
    .line 81
    invoke-direct/range {v4 .. v17}, Lteam/opay/pay/payment/betting/MoreBannerListAdapterBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_0
    const-string v1, "key_data"

    .line 89
    .line 90
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 91
    .line 92
    .line 93
    new-instance v1, Lteam/opay/pay/payment/betting/MoreBannerListFragment;

    .line 94
    .line 95
    invoke-direct {v1}, Lteam/opay/pay/payment/betting/MoreBannerListFragment;-><init>()V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 99
    .line 100
    .line 101
    return-object v1
.end method
