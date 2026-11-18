.class public final Lcom/opay/team/newhome/home/HomeAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "HomeAdapter.kt"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NotifyDataSetChanged"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/opay/team/newhome/home/HomeAdapter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/opay/team/newhome/home/holder/HomeViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00ca\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0015\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0011\u0008\u0007\u0018\u0000 \u0090\u00012\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0091\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u001f\u0010\t\u001a\u00020\u00082\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJO\u0010\u0013\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u000b2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r2,\u0010\u0012\u001a(\u0012\u0006\u0012\u0004\u0018\u00010\r\u0012\u0006\u0012\u0004\u0018\u00010\r\u0012\u0006\u0012\u0004\u0018\u00010\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0011\u0012\u0004\u0012\u00020\u00080\u000fH\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014JO\u0010\u0016\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u00152\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r2,\u0010\u0012\u001a(\u0012\u0006\u0012\u0004\u0018\u00010\r\u0012\u0006\u0012\u0004\u0018\u00010\r\u0012\u0006\u0012\u0004\u0018\u00010\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0011\u0012\u0004\u0012\u00020\u00080\u000fH\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0017JO\u0010\u0019\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u00182\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r2,\u0010\u0012\u001a(\u0012\u0006\u0012\u0004\u0018\u00010\r\u0012\u0006\u0012\u0004\u0018\u00010\r\u0012\u0006\u0012\u0004\u0018\u00010\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0011\u0012\u0004\u0012\u00020\u00080\u000fH\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u001b\u0010\u001e\u001a\u00020\u00082\u000c\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u001b\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\'\u0010$\u001a\u00020\u00082\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020!0 2\n\u0008\u0002\u0010#\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0004\u0008$\u0010%J\r\u0010&\u001a\u00020\u0008\u00a2\u0006\u0004\u0008&\u0010\u0004J\u001d\u0010*\u001a\u00020\u00082\u0006\u0010(\u001a\u00020\'2\u0006\u0010)\u001a\u00020\u001c\u00a2\u0006\u0004\u0008*\u0010+J\u0015\u0010-\u001a\u00020\u00082\u0006\u0010,\u001a\u00020\u0005\u00a2\u0006\u0004\u0008-\u0010.J\u0015\u0010/\u001a\u00020\u00082\u0006\u0010\u001d\u001a\u00020\u001c\u00a2\u0006\u0004\u0008/\u00100J\r\u00101\u001a\u00020\u0008\u00a2\u0006\u0004\u00081\u0010\u0004J\r\u00102\u001a\u00020\u0005\u00a2\u0006\u0004\u00082\u00103J\r\u00104\u001a\u00020\u0005\u00a2\u0006\u0004\u00084\u00103J\u001d\u00109\u001a\u00020\u00082\u0006\u00106\u001a\u0002052\u0006\u00108\u001a\u000207\u00a2\u0006\u0004\u00089\u0010:J\u001d\u0010;\u001a\u00020\u00082\u0006\u00106\u001a\u0002052\u0006\u00108\u001a\u000207\u00a2\u0006\u0004\u0008;\u0010:J\u001d\u0010>\u001a\u00020\u00082\u0006\u0010=\u001a\u00020<2\u0006\u0010)\u001a\u00020\u001c\u00a2\u0006\u0004\u0008>\u0010?J\u001f\u0010C\u001a\u00020\u00022\u0006\u0010A\u001a\u00020@2\u0006\u0010B\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008C\u0010DJ\u001f\u0010G\u001a\u00020\u00082\u0006\u00106\u001a\u0002052\u0008\u0010F\u001a\u0004\u0018\u00010E\u00a2\u0006\u0004\u0008G\u0010HJ\u001f\u0010J\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u00022\u0006\u0010I\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008J\u0010KJ\u0015\u0010L\u001a\u00020\u00082\u0006\u00106\u001a\u000205\u00a2\u0006\u0004\u0008L\u0010MJ\u0015\u0010N\u001a\u00020\u00082\u0006\u00106\u001a\u000205\u00a2\u0006\u0004\u0008N\u0010MJ\u0015\u0010O\u001a\u00020\u00082\u0006\u00106\u001a\u000205\u00a2\u0006\u0004\u0008O\u0010MJ\u0017\u0010Q\u001a\u00020P2\u0006\u0010I\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008Q\u0010RJ\u000f\u0010S\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008S\u00103J\u0017\u0010T\u001a\u00020\u00052\u0006\u0010I\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008T\u0010UJ_\u0010X\u001a\u00020\u00082\u0006\u00106\u001a\u0002052\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r2,\u0010\u0012\u001a(\u0012\u0006\u0012\u0004\u0018\u00010\r\u0012\u0006\u0012\u0004\u0018\u00010\r\u0012\u0006\u0012\u0004\u0018\u00010\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0011\u0012\u0004\u0012\u00020\u00080\u000f2\u0010\u0008\u0002\u0010W\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010V\u00a2\u0006\u0004\u0008X\u0010YR(\u0010_\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u001b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008Z\u0010[\u001a\u0004\u0008\\\u0010]\"\u0004\u0008^\u0010\u001fR\u0014\u0010c\u001a\u00020`8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008a\u0010bR*\u0010g\u001a\u0002072\u0006\u0010d\u001a\u0002078\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008e\u0010f\u001a\u0004\u0008g\u0010h\"\u0004\u0008i\u0010jR\u001b\u0010p\u001a\u00020k8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008l\u0010m\u001a\u0004\u0008n\u0010oR4\u0010x\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020E\u0012\u0004\u0012\u00020\u00080q8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008r\u0010s\u001a\u0004\u0008t\u0010u\"\u0004\u0008v\u0010wR/\u0010\u0080\u0001\u001a\u000e\u0012\u0004\u0012\u00020E\u0012\u0004\u0012\u00020\u00080y8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008z\u0010{\u001a\u0004\u0008|\u0010}\"\u0004\u0008~\u0010\u007fR2\u0010\u0084\u0001\u001a\u000f\u0012\u0005\u0012\u00030\u0081\u0001\u0012\u0004\u0012\u00020\u00080y8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0014\n\u0005\u0008\u0082\u0001\u0010{\u001a\u0005\u0008\u0083\u0001\u0010}\"\u0004\u0008f\u0010\u007fR2\u0010\u0088\u0001\u001a\u000e\u0012\u0004\u0012\u00020P\u0012\u0004\u0012\u00020\u00080y8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0015\n\u0005\u0008\u0085\u0001\u0010{\u001a\u0005\u0008\u0086\u0001\u0010}\"\u0005\u0008\u0087\u0001\u0010\u007fR8\u0010\u008c\u0001\u001a\u0014\u0012\u0004\u0012\u000207\u0012\u0004\u0012\u00020E\u0012\u0004\u0012\u00020\u00080q8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0015\n\u0005\u0008\u0089\u0001\u0010s\u001a\u0005\u0008\u008a\u0001\u0010u\"\u0005\u0008\u008b\u0001\u0010wR$\u0010\u008f\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u001b8FX\u0086\u0084\u0002\u00a2\u0006\u000e\n\u0005\u0008\u008d\u0001\u0010m\u001a\u0005\u0008\u008e\u0001\u0010]\u00a8\u0006\u0092\u0001"
    }
    d2 = {
        "Lcom/opay/team/newhome/home/HomeAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lcom/opay/team/newhome/home/holder/HomeViewHolder;",
        "<init>",
        "()V",
        "",
        "oldSize",
        "billStartIndex",
        "",
        "H",
        "(II)V",
        "Lcom/opay/team/newhome/home/holder/HomeHeadViewHolder;",
        "holder",
        "",
        "action",
        "Lkotlin/Function4;",
        "",
        "Landroid/view/View;",
        "callback",
        "C",
        "(Lcom/opay/team/newhome/home/holder/HomeHeadViewHolder;Ljava/lang/String;Lim6;)V",
        "Lcom/opay/team/newhome/home/holder/HomeBannerViewHolder;",
        "z",
        "(Lcom/opay/team/newhome/home/holder/HomeBannerViewHolder;Ljava/lang/String;Lim6;)V",
        "Lcom/opay/team/newhome/home/holder/HomeConfigListViewHolder;",
        "A",
        "(Lcom/opay/team/newhome/home/holder/HomeConfigListViewHolder;Ljava/lang/String;Lim6;)V",
        "",
        "Lcom/opay/team/newhome/home/bean/HomeData;",
        "homeData",
        "setNewData",
        "(Ljava/util/List;)V",
        "",
        "Lteam/opay/pay/transaction/TransactionInfoV2;",
        "list",
        "errorMsg",
        "f0",
        "(Ljava/util/List;Ljava/lang/String;)V",
        "v",
        "Lcom/opay/team/newhome/reward/HomeKBoxRsp;",
        "homeComponent",
        "homeItemData",
        "S",
        "(Lcom/opay/team/newhome/reward/HomeKBoxRsp;Lcom/opay/team/newhome/home/bean/HomeData;)V",
        "cardType",
        "Q",
        "(I)V",
        "R",
        "(Lcom/opay/team/newhome/home/bean/HomeData;)V",
        "F",
        "y",
        "()I",
        "x",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "recyclerView",
        "",
        "isLoading",
        "G",
        "(Landroidx/recyclerview/widget/RecyclerView;Z)V",
        "U",
        "Lcom/opay/team/newhome/reward/SecurityFeel;",
        "securityComponent",
        "T",
        "(Lcom/opay/team/newhome/reward/SecurityFeel;Lcom/opay/team/newhome/home/bean/HomeData;)V",
        "Landroid/view/ViewGroup;",
        "parent",
        "viewType",
        "J",
        "(Landroid/view/ViewGroup;I)Lcom/opay/team/newhome/home/holder/HomeViewHolder;",
        "Lcom/opay/team/newhome/reward/WidgetModule;",
        "item",
        "L",
        "(Landroidx/recyclerview/widget/RecyclerView;Lcom/opay/team/newhome/reward/WidgetModule;)V",
        "position",
        "I",
        "(Lcom/opay/team/newhome/home/holder/HomeViewHolder;I)V",
        "d0",
        "(Landroidx/recyclerview/widget/RecyclerView;)V",
        "c0",
        "e0",
        "",
        "getItemId",
        "(I)J",
        "getItemCount",
        "getItemViewType",
        "(I)I",
        "Lkotlin/Function0;",
        "endCallback",
        "D",
        "(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/String;Lim6;Lkotlin/jvm/functions/Function0;)V",
        "a",
        "Ljava/util/List;",
        "getData",
        "()Ljava/util/List;",
        "setData",
        "data",
        "Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;",
        "b",
        "Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;",
        "nestedViewPool",
        "value",
        "c",
        "Z",
        "isCurrentPageVisible",
        "()Z",
        "V",
        "(Z)V",
        "Lteam/opay/core/settings/SettingsStorage;",
        "d",
        "Lid8;",
        "getSettingsStorage",
        "()Lteam/opay/core/settings/SettingsStorage;",
        "settingsStorage",
        "Lkotlin/Function2;",
        "e",
        "Lkotlin/jvm/functions/Function2;",
        "getOnKBoxButtonClick",
        "()Lkotlin/jvm/functions/Function2;",
        "W",
        "(Lkotlin/jvm/functions/Function2;)V",
        "onKBoxButtonClick",
        "Lkotlin/Function1;",
        "f",
        "Lkotlin/jvm/functions/Function1;",
        "getOnKBoxStyle3Click",
        "()Lkotlin/jvm/functions/Function1;",
        "Y",
        "(Lkotlin/jvm/functions/Function1;)V",
        "onKBoxStyle3Click",
        "Lcom/opay/team/newhome/reward/SecurityOptionContent;",
        "g",
        "getOnSecurityItemClickCallback",
        "onSecurityItemClickCallback",
        "h",
        "getOnSecurityItemCloseCallback",
        "a0",
        "onSecurityItemCloseCallback",
        "i",
        "getOnKBoxReporter",
        "X",
        "onKBoxReporter",
        "j",
        "w",
        "billsList",
        "k",
        "Companion",
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


# static fields
.field public static final k:Lcom/opay/team/newhome/home/HomeAdapter$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static l:Z


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/opay/team/newhome/home/bean/HomeData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:Z

.field public final d:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public e:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Lcom/opay/team/newhome/reward/WidgetModule;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/opay/team/newhome/reward/WidgetModule;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/opay/team/newhome/reward/SecurityOptionContent;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public h:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Lcom/opay/team/newhome/reward/WidgetModule;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/opay/team/newhome/home/HomeAdapter$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/opay/team/newhome/home/HomeAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/opay/team/newhome/home/HomeAdapter;->k:Lcom/opay/team/newhome/home/HomeAdapter$Companion;

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    sput-boolean v0, Lcom/opay/team/newhome/home/HomeAdapter;->l:Z

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/opay/team/newhome/home/HomeAdapter;->a:Ljava/util/List;

    .line 10
    .line 11
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    .line 12
    .line 13
    invoke-direct {v0}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;-><init>()V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    const/16 v2, 0x14

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->m(II)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/opay/team/newhome/home/HomeAdapter;->b:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lcom/opay/team/newhome/home/HomeAdapter;->c:Z

    .line 26
    .line 27
    new-instance v0, Lby6;

    .line 28
    .line 29
    invoke-direct {v0}, Lby6;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iput-object v0, p0, Lcom/opay/team/newhome/home/HomeAdapter;->d:Lid8;

    .line 37
    .line 38
    new-instance v0, Lcy6;

    .line 39
    .line 40
    invoke-direct {v0}, Lcy6;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object v0, p0, Lcom/opay/team/newhome/home/HomeAdapter;->e:Lkotlin/jvm/functions/Function2;

    .line 44
    .line 45
    new-instance v0, Ldy6;

    .line 46
    .line 47
    invoke-direct {v0}, Ldy6;-><init>()V

    .line 48
    .line 49
    .line 50
    iput-object v0, p0, Lcom/opay/team/newhome/home/HomeAdapter;->f:Lkotlin/jvm/functions/Function1;

    .line 51
    .line 52
    new-instance v0, Ley6;

    .line 53
    .line 54
    invoke-direct {v0}, Ley6;-><init>()V

    .line 55
    .line 56
    .line 57
    iput-object v0, p0, Lcom/opay/team/newhome/home/HomeAdapter;->g:Lkotlin/jvm/functions/Function1;

    .line 58
    .line 59
    new-instance v0, Lfy6;

    .line 60
    .line 61
    invoke-direct {v0}, Lfy6;-><init>()V

    .line 62
    .line 63
    .line 64
    iput-object v0, p0, Lcom/opay/team/newhome/home/HomeAdapter;->h:Lkotlin/jvm/functions/Function1;

    .line 65
    .line 66
    new-instance v0, Lgy6;

    .line 67
    .line 68
    invoke-direct {v0}, Lgy6;-><init>()V

    .line 69
    .line 70
    .line 71
    iput-object v0, p0, Lcom/opay/team/newhome/home/HomeAdapter;->i:Lkotlin/jvm/functions/Function2;

    .line 72
    .line 73
    new-instance v0, Lhy6;

    .line 74
    .line 75
    invoke-direct {v0}, Lhy6;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    iput-object v0, p0, Lcom/opay/team/newhome/home/HomeAdapter;->j:Lid8;

    .line 83
    .line 84
    return-void
.end method

.method public static final B(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 7
    .line 8
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 9
    .line 10
    return-object p0
.end method

.method public static synthetic E(Lcom/opay/team/newhome/home/HomeAdapter;Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/String;Lim6;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p5, p5, 0x8

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    const/4 p4, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/opay/team/newhome/home/HomeAdapter;->D(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/String;Lim6;Lkotlin/jvm/functions/Function0;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static final K(ILcom/opay/team/newhome/reward/WidgetModule;)Lkotlin/Unit;
    .locals 0

    .line 1
    const-string p0, "<unused var>"

    .line 2
    .line 3
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p0
.end method

.method public static final M(ZLcom/opay/team/newhome/reward/WidgetModule;)Lkotlin/Unit;
    .locals 0

    .line 1
    const-string p0, "<unused var>"

    .line 2
    .line 3
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p0
.end method

.method public static final N(Lcom/opay/team/newhome/reward/WidgetModule;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "<unused var>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p0
.end method

.method public static final O(Lcom/opay/team/newhome/reward/SecurityOptionContent;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p0
.end method

.method public static final P(J)Lkotlin/Unit;
    .locals 0

    .line 1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final b0()Lteam/opay/core/settings/SettingsStorage;
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/core/settings/SettingsStorage;

    .line 2
    .line 3
    sget-object v1, Lteam/opay/pay/envconfigapi/ConfigStorage;->f:Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;

    .line 4
    .line 5
    invoke-virtual {v1}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lteam/opay/pay/envconfigapi/ConfigStorage;->d()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-direct {v0, v1}, Lteam/opay/core/settings/SettingsStorage;-><init>(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public static synthetic k(Lcom/opay/team/newhome/reward/WidgetModule;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/opay/team/newhome/home/HomeAdapter;->N(Lcom/opay/team/newhome/reward/WidgetModule;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic l(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/opay/team/newhome/home/HomeAdapter;->B(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic m(Lcom/opay/team/newhome/reward/SecurityOptionContent;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/opay/team/newhome/home/HomeAdapter;->O(Lcom/opay/team/newhome/reward/SecurityOptionContent;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic n()Ljava/util/List;
    .locals 1

    .line 1
    invoke-static {}, Lcom/opay/team/newhome/home/HomeAdapter;->u()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic o()Lteam/opay/core/settings/SettingsStorage;
    .locals 1

    .line 1
    invoke-static {}, Lcom/opay/team/newhome/home/HomeAdapter;->b0()Lteam/opay/core/settings/SettingsStorage;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic p(ZLcom/opay/team/newhome/reward/WidgetModule;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/opay/team/newhome/home/HomeAdapter;->M(ZLcom/opay/team/newhome/reward/WidgetModule;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic q(ILcom/opay/team/newhome/reward/WidgetModule;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/opay/team/newhome/home/HomeAdapter;->K(ILcom/opay/team/newhome/reward/WidgetModule;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic r(J)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/opay/team/newhome/home/HomeAdapter;->P(J)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic s()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/opay/team/newhome/home/HomeAdapter;->l:Z

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic t(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/opay/team/newhome/home/HomeAdapter;->l:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final u()Ljava/util/List;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final A(Lcom/opay/team/newhome/home/holder/HomeConfigListViewHolder;Ljava/lang/String;Lim6;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/opay/team/newhome/home/holder/HomeConfigListViewHolder;",
            "Ljava/lang/String;",
            "Lim6<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/String;",
            "-[I-",
            "Landroid/view/View;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/opay/team/newhome/home/holder/HomeConfigListViewHolder;->g()Lcom/opay/team/newhome/bean/CommonPayData;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_6

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/opay/team/newhome/bean/CommonPayData;->a()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_6

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x0

    .line 22
    const/4 v3, 0x2

    .line 23
    const-string v4, ""

    .line 24
    .line 25
    if-eqz v1, :cond_3

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    move-object v5, v1

    .line 32
    check-cast v5, Lcom/opay/team/newhome/bean/NewBusinessData;

    .line 33
    .line 34
    invoke-virtual {v5}, Lcom/opay/team/newhome/bean/NewBusinessData;->getAction()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    if-eqz v5, :cond_0

    .line 39
    .line 40
    if-eqz p2, :cond_1

    .line 41
    .line 42
    const-string v6, "entrance"

    .line 43
    .line 44
    invoke-static {p2, v6, p2}, Lkotlin/text/StringsKt;->l1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    if-nez v6, :cond_2

    .line 49
    .line 50
    :cond_1
    move-object v6, v4

    .line 51
    :cond_2
    const/4 v7, 0x0

    .line 52
    invoke-static {v5, v6, v7, v3, v2}, Lkotlin/text/StringsKt;->d0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    const/4 v5, 0x1

    .line 57
    if-ne v2, v5, :cond_0

    .line 58
    .line 59
    move-object v2, v1

    .line 60
    :cond_3
    check-cast v2, Lcom/opay/team/newhome/bean/NewBusinessData;

    .line 61
    .line 62
    if-eqz v2, :cond_6

    .line 63
    .line 64
    new-array p2, v3, [I

    .line 65
    .line 66
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 67
    .line 68
    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/opay/team/newhome/home/holder/HomeConfigListViewHolder;->i()Lcom/opay/team/newhome/adapter/HomeServiceTypeOneAdapter;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 76
    .line 77
    sget v3, Lteam/opay/pay/R$id;->homeListViewContent:I

    .line 78
    .line 79
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    const-string v3, "findViewById(...)"

    .line 84
    .line 85
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 89
    .line 90
    invoke-virtual {v2}, Lcom/opay/team/newhome/bean/NewBusinessData;->getAction()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    if-nez v3, :cond_4

    .line 95
    .line 96
    move-object v3, v4

    .line 97
    :cond_4
    new-instance v5, Liy6;

    .line 98
    .line 99
    invoke-direct {v5, v0}, Liy6;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, p1, p2, v3, v5}, Lcom/opay/team/newhome/adapter/HomeServiceTypeOneAdapter;->s(Landroidx/recyclerview/widget/RecyclerView;[ILjava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v2}, Lcom/opay/team/newhome/bean/NewBusinessData;->getImageIconUrl()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-virtual {v2}, Lcom/opay/team/newhome/bean/NewBusinessData;->getName()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    if-nez v1, :cond_5

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_5
    move-object v4, v1

    .line 117
    :goto_0
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 118
    .line 119
    invoke-interface {p3, p1, v4, p2, v0}, Lim6;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    :cond_6
    return-void
.end method

.method public final C(Lcom/opay/team/newhome/home/holder/HomeHeadViewHolder;Ljava/lang/String;Lim6;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/opay/team/newhome/home/holder/HomeHeadViewHolder;",
            "Ljava/lang/String;",
            "Lim6<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/String;",
            "-[I-",
            "Landroid/view/View;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcnc;->a:Lcnc;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcnc;->a()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    const-string v1, "entrance"

    .line 10
    .line 11
    invoke-static {p2, v1, p2}, Lkotlin/text/StringsKt;->l1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    if-nez p2, :cond_1

    .line 16
    .line 17
    :cond_0
    const-string p2, ""

    .line 18
    .line 19
    :cond_1
    const/4 v1, 0x0

    .line 20
    const/4 v2, 0x2

    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-static {v0, p2, v1, v2, v3}, Lkotlin/text/StringsKt;->d0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    if-eqz p2, :cond_2

    .line 27
    .line 28
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    sget v0, Lteam/opay/pay/R$mipmap;->omain_ic_balance:I

    .line 35
    .line 36
    invoke-static {p2, v0}, Lgmf;->b(Landroid/content/Context;I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    sget v0, Lteam/opay/pay/R$id;->opay_total_title:I

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    check-cast p1, Landroid/widget/TextView;

    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    const/4 v8, 0x4

    .line 57
    const/4 v9, 0x0

    .line 58
    const-string v5, "(\u20a6)"

    .line 59
    .line 60
    const-string v6, ""

    .line 61
    .line 62
    const/4 v7, 0x0

    .line 63
    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->R(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-interface {p3, p2, p1, v3, v3}, Lim6;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    :cond_2
    return-void
.end method

.method public final D(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/String;Lim6;Lkotlin/jvm/functions/Function0;)V
    .locals 4
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lim6;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Ljava/lang/String;",
            "Lim6<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/String;",
            "-[I-",
            "Landroid/view/View;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "recyclerView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "callback"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    instance-of v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    if-nez v0, :cond_1

    .line 24
    .line 25
    goto :goto_3

    .line 26
    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    const/4 v2, -0x1

    .line 35
    if-eq v1, v2, :cond_8

    .line 36
    .line 37
    if-ne v0, v2, :cond_2

    .line 38
    .line 39
    goto :goto_3

    .line 40
    :cond_2
    if-gt v1, v0, :cond_8

    .line 41
    .line 42
    :goto_1
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    instance-of v3, v2, Lcom/opay/team/newhome/home/holder/HomeViewHolder;

    .line 47
    .line 48
    if-eqz v3, :cond_7

    .line 49
    .line 50
    check-cast v2, Lcom/opay/team/newhome/home/holder/HomeViewHolder;

    .line 51
    .line 52
    instance-of v3, v2, Lcom/opay/team/newhome/home/holder/HomeHeadViewHolder;

    .line 53
    .line 54
    if-eqz v3, :cond_3

    .line 55
    .line 56
    check-cast v2, Lcom/opay/team/newhome/home/holder/HomeHeadViewHolder;

    .line 57
    .line 58
    invoke-virtual {p0, v2, p2, p3}, Lcom/opay/team/newhome/home/HomeAdapter;->C(Lcom/opay/team/newhome/home/holder/HomeHeadViewHolder;Ljava/lang/String;Lim6;)V

    .line 59
    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_3
    instance-of v3, v2, Lcom/opay/team/newhome/home/holder/HomeBannerViewHolder;

    .line 63
    .line 64
    if-eqz v3, :cond_4

    .line 65
    .line 66
    check-cast v2, Lcom/opay/team/newhome/home/holder/HomeBannerViewHolder;

    .line 67
    .line 68
    invoke-virtual {p0, v2, p2, p3}, Lcom/opay/team/newhome/home/HomeAdapter;->z(Lcom/opay/team/newhome/home/holder/HomeBannerViewHolder;Ljava/lang/String;Lim6;)V

    .line 69
    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_4
    instance-of v3, v2, Lcom/opay/team/newhome/home/holder/HomeFinanceViewHolder;

    .line 73
    .line 74
    if-eqz v3, :cond_5

    .line 75
    .line 76
    check-cast v2, Lcom/opay/team/newhome/home/holder/HomeConfigListViewHolder;

    .line 77
    .line 78
    invoke-virtual {p0, v2, p2, p3}, Lcom/opay/team/newhome/home/HomeAdapter;->A(Lcom/opay/team/newhome/home/holder/HomeConfigListViewHolder;Ljava/lang/String;Lim6;)V

    .line 79
    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_5
    instance-of v3, v2, Lcom/opay/team/newhome/home/holder/BillPaymentViewHolder;

    .line 83
    .line 84
    if-eqz v3, :cond_6

    .line 85
    .line 86
    check-cast v2, Lcom/opay/team/newhome/home/holder/HomeConfigListViewHolder;

    .line 87
    .line 88
    invoke-virtual {p0, v2, p2, p3}, Lcom/opay/team/newhome/home/HomeAdapter;->A(Lcom/opay/team/newhome/home/holder/HomeConfigListViewHolder;Ljava/lang/String;Lim6;)V

    .line 89
    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_6
    instance-of v3, v2, Lcom/opay/team/newhome/home/holder/OtherServicesViewHolder;

    .line 93
    .line 94
    if-eqz v3, :cond_7

    .line 95
    .line 96
    check-cast v2, Lcom/opay/team/newhome/home/holder/HomeConfigListViewHolder;

    .line 97
    .line 98
    invoke-virtual {p0, v2, p2, p3}, Lcom/opay/team/newhome/home/HomeAdapter;->A(Lcom/opay/team/newhome/home/holder/HomeConfigListViewHolder;Ljava/lang/String;Lim6;)V

    .line 99
    .line 100
    .line 101
    :cond_7
    :goto_2
    if-eq v1, v0, :cond_8

    .line 102
    .line 103
    add-int/lit8 v1, v1, 0x1

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_8
    :goto_3
    if-eqz p4, :cond_9

    .line 107
    .line 108
    invoke-interface {p4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    :cond_9
    return-void
.end method

.method public final F()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/home/HomeAdapter;->a:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lcom/opay/team/newhome/home/bean/HomeData;

    .line 19
    .line 20
    invoke-virtual {v2}, Lcom/opay/team/newhome/home/bean/HomeData;->f()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const/4 v3, 0x2

    .line 25
    if-ne v2, v3, :cond_0

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v1, -0x1

    .line 32
    :goto_1
    if-ltz v1, :cond_2

    .line 33
    .line 34
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 35
    .line 36
    .line 37
    :cond_2
    return-void
.end method

.method public final G(Landroidx/recyclerview/widget/RecyclerView;Z)V
    .locals 6
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "recyclerView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/opay/team/newhome/home/HomeAdapter;->a:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    const/4 v4, -0x1

    .line 19
    if-eqz v3, :cond_1

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Lcom/opay/team/newhome/home/bean/HomeData;

    .line 26
    .line 27
    invoke-virtual {v3}, Lcom/opay/team/newhome/home/bean/HomeData;->f()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    const/16 v5, 0xc

    .line 32
    .line 33
    if-ne v3, v5, :cond_0

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 v2, -0x1

    .line 40
    :goto_1
    const/4 v0, 0x0

    .line 41
    if-ltz v2, :cond_4

    .line 42
    .line 43
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    instance-of v3, v2, Lcom/opay/team/newhome/home/holder/HomeViewHolder;

    .line 48
    .line 49
    if-eqz v3, :cond_2

    .line 50
    .line 51
    check-cast v2, Lcom/opay/team/newhome/home/holder/HomeViewHolder;

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_2
    move-object v2, v0

    .line 55
    :goto_2
    if-eqz v2, :cond_3

    .line 56
    .line 57
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 58
    .line 59
    if-eqz v2, :cond_3

    .line 60
    .line 61
    sget v3, Lteam/opay/pay/R$id;->box_loading:I

    .line 62
    .line 63
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    check-cast v2, Landroid/widget/ProgressBar;

    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_3
    move-object v2, v0

    .line 71
    :goto_3
    if-eqz v2, :cond_4

    .line 72
    .line 73
    invoke-static {v2, p2}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 74
    .line 75
    .line 76
    :cond_4
    iget-object v2, p0, Lcom/opay/team/newhome/home/HomeAdapter;->a:Ljava/util/List;

    .line 77
    .line 78
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    if-eqz v3, :cond_6

    .line 87
    .line 88
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    check-cast v3, Lcom/opay/team/newhome/home/bean/HomeData;

    .line 93
    .line 94
    invoke-virtual {v3}, Lcom/opay/team/newhome/home/bean/HomeData;->f()I

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    const/16 v5, 0x13

    .line 99
    .line 100
    if-ne v3, v5, :cond_5

    .line 101
    .line 102
    move v4, v1

    .line 103
    goto :goto_5

    .line 104
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 105
    .line 106
    goto :goto_4

    .line 107
    :cond_6
    :goto_5
    if-ltz v4, :cond_9

    .line 108
    .line 109
    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    instance-of v1, p1, Lcom/opay/team/newhome/home/holder/HomeKBoxStyle3ViewHolder;

    .line 114
    .line 115
    if-eqz v1, :cond_7

    .line 116
    .line 117
    check-cast p1, Lcom/opay/team/newhome/home/holder/HomeKBoxStyle3ViewHolder;

    .line 118
    .line 119
    goto :goto_6

    .line 120
    :cond_7
    move-object p1, v0

    .line 121
    :goto_6
    if-eqz p1, :cond_8

    .line 122
    .line 123
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 124
    .line 125
    if-eqz p1, :cond_8

    .line 126
    .line 127
    sget v0, Lteam/opay/pay/R$id;->boxStyle3Loading:I

    .line 128
    .line 129
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    move-object v0, p1

    .line 134
    check-cast v0, Landroid/widget/ProgressBar;

    .line 135
    .line 136
    :cond_8
    if-eqz v0, :cond_9

    .line 137
    .line 138
    invoke-static {v0, p2}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 139
    .line 140
    .line 141
    :cond_9
    return-void
.end method

.method public final H(II)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/opay/team/newhome/home/HomeAdapter;->w()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-lt v0, p1, :cond_0

    .line 11
    .line 12
    sub-int/2addr v0, p1

    .line 13
    move v1, v0

    .line 14
    const/4 v0, 0x0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    sub-int/2addr p1, v0

    .line 17
    move v5, v0

    .line 18
    move v0, p1

    .line 19
    move p1, v5

    .line 20
    :goto_0
    if-eqz p1, :cond_1

    .line 21
    .line 22
    add-int/lit8 v2, p2, 0x1

    .line 23
    .line 24
    add-int/lit8 v3, p1, 0x1

    .line 25
    .line 26
    invoke-virtual {p0, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    .line 27
    .line 28
    .line 29
    :cond_1
    if-eqz v1, :cond_2

    .line 30
    .line 31
    add-int/lit8 v2, p2, 0x1

    .line 32
    .line 33
    add-int v3, v2, p1

    .line 34
    .line 35
    invoke-virtual {p0, v3, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/opay/team/newhome/home/HomeAdapter;->w()Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    add-int/2addr v2, v3

    .line 47
    iget-object v3, p0, Lcom/opay/team/newhome/home/HomeAdapter;->a:Ljava/util/List;

    .line 48
    .line 49
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    sub-int/2addr v3, p2

    .line 54
    invoke-virtual {p0}, Lcom/opay/team/newhome/home/HomeAdapter;->w()Ljava/util/List;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    add-int/2addr v3, v4

    .line 63
    invoke-virtual {p0, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    .line 64
    .line 65
    .line 66
    :cond_2
    if-eqz v0, :cond_4

    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/opay/team/newhome/home/HomeAdapter;->w()Ljava/util/List;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-nez v2, :cond_3

    .line 77
    .line 78
    add-int/2addr p2, p1

    .line 79
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 80
    .line 81
    invoke-virtual {p0, p2, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    .line 82
    .line 83
    .line 84
    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    .line 89
    const-string v2, "updateBills\uff1achangeCount: "

    .line 90
    .line 91
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string p1, ", insertCount: "

    .line 98
    .line 99
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string p1, ", removeCount: "

    .line 106
    .line 107
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    return-void
.end method

.method public I(Lcom/opay/team/newhome/home/holder/HomeViewHolder;I)V
    .locals 5
    .param p1    # Lcom/opay/team/newhome/home/holder/HomeViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "holder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/opay/team/newhome/home/HomeAdapter;->a:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/opay/team/newhome/home/bean/HomeData;

    .line 13
    .line 14
    invoke-virtual {p1, p2, v0}, Lcom/opay/team/newhome/home/holder/HomeViewHolder;->b(ILcom/opay/team/newhome/home/bean/HomeData;)V

    .line 15
    .line 16
    .line 17
    instance-of v0, p1, Lcom/opay/team/newhome/home/holder/HomeBannerViewHolder;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    move-object v0, p1

    .line 22
    check-cast v0, Lcom/opay/team/newhome/home/holder/HomeBannerViewHolder;

    .line 23
    .line 24
    iget-boolean v1, p0, Lcom/opay/team/newhome/home/HomeAdapter;->c:Z

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/opay/team/newhome/home/holder/HomeBannerViewHolder;->k(Z)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p2}, Lcom/opay/team/newhome/home/HomeAdapter;->getItemViewType(I)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    const/16 v2, 0x12

    .line 34
    .line 35
    if-ne v1, v2, :cond_0

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/opay/team/newhome/home/holder/HomeBannerViewHolder;->f()Lteam/opay/pay/widget/LoopViewPager;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    const-string v1, "h,4:1"

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Lteam/opay/pay/widget/LoopViewPager;->setDimensionRatio(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {v0}, Lcom/opay/team/newhome/home/holder/HomeBannerViewHolder;->f()Lteam/opay/pay/widget/LoopViewPager;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    const/16 v1, 0x48

    .line 56
    .line 57
    invoke-static {v1}, Ljmf;->d(I)I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    invoke-virtual {v0, v1}, Lteam/opay/pay/widget/LoopViewPager;->n(I)V

    .line 62
    .line 63
    .line 64
    :cond_1
    :goto_0
    instance-of v0, p1, Lcom/opay/team/newhome/home/holder/HomeKBoxViewHolder;

    .line 65
    .line 66
    if-eqz v0, :cond_3

    .line 67
    .line 68
    iget-boolean v0, p0, Lcom/opay/team/newhome/home/HomeAdapter;->c:Z

    .line 69
    .line 70
    if-eqz v0, :cond_2

    .line 71
    .line 72
    move-object v0, p1

    .line 73
    check-cast v0, Lcom/opay/team/newhome/home/holder/HomeKBoxViewHolder;

    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/opay/team/newhome/home/holder/HomeKBoxViewHolder;->r()V

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_2
    move-object v0, p1

    .line 80
    check-cast v0, Lcom/opay/team/newhome/home/holder/HomeKBoxViewHolder;

    .line 81
    .line 82
    invoke-virtual {v0}, Lcom/opay/team/newhome/home/holder/HomeKBoxViewHolder;->s()V

    .line 83
    .line 84
    .line 85
    :cond_3
    :goto_1
    invoke-virtual {p0, p2}, Lcom/opay/team/newhome/home/HomeAdapter;->getItemViewType(I)I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    const/16 v1, 0x10

    .line 90
    .line 91
    if-ne v0, v1, :cond_a

    .line 92
    .line 93
    const/4 v0, 0x0

    .line 94
    const/4 v2, 0x1

    .line 95
    if-eqz p2, :cond_4

    .line 96
    .line 97
    add-int/lit8 v3, p2, -0x1

    .line 98
    .line 99
    invoke-virtual {p0, v3}, Lcom/opay/team/newhome/home/HomeAdapter;->getItemViewType(I)I

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    if-eq v3, v1, :cond_4

    .line 104
    .line 105
    const/4 v3, 0x1

    .line 106
    goto :goto_2

    .line 107
    :cond_4
    const/4 v3, 0x0

    .line 108
    :goto_2
    invoke-virtual {p0}, Lcom/opay/team/newhome/home/HomeAdapter;->getItemCount()I

    .line 109
    .line 110
    .line 111
    move-result v4

    .line 112
    sub-int/2addr v4, v2

    .line 113
    if-ge p2, v4, :cond_5

    .line 114
    .line 115
    add-int/lit8 v4, p2, 0x1

    .line 116
    .line 117
    invoke-virtual {p0, v4}, Lcom/opay/team/newhome/home/HomeAdapter;->getItemViewType(I)I

    .line 118
    .line 119
    .line 120
    move-result v4

    .line 121
    if-eq v4, v1, :cond_5

    .line 122
    .line 123
    const/4 v0, 0x1

    .line 124
    :cond_5
    instance-of v1, p1, Lteam/opay/pay/transaction/BillCenterViewHolder;

    .line 125
    .line 126
    if-eqz v1, :cond_6

    .line 127
    .line 128
    move-object v1, p1

    .line 129
    check-cast v1, Lteam/opay/pay/transaction/BillCenterViewHolder;

    .line 130
    .line 131
    goto :goto_3

    .line 132
    :cond_6
    const/4 v1, 0x0

    .line 133
    :goto_3
    if-eqz v1, :cond_a

    .line 134
    .line 135
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 136
    .line 137
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    if-eqz v3, :cond_7

    .line 142
    .line 143
    if-eqz v0, :cond_7

    .line 144
    .line 145
    sget v0, Lteam/opay/pay/R$drawable;->omain_shape_white_12:I

    .line 146
    .line 147
    invoke-static {v2, v0}, Lzq2;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-virtual {v1, v0}, Lteam/opay/pay/transaction/BillCenterViewHolder;->m(Landroid/graphics/drawable/Drawable;)V

    .line 152
    .line 153
    .line 154
    goto :goto_4

    .line 155
    :cond_7
    if-eqz v3, :cond_8

    .line 156
    .line 157
    sget v0, Lteam/opay/pay/R$drawable;->shape_white_top_12:I

    .line 158
    .line 159
    invoke-static {v2, v0}, Lzq2;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-virtual {v1, v0}, Lteam/opay/pay/transaction/BillCenterViewHolder;->m(Landroid/graphics/drawable/Drawable;)V

    .line 164
    .line 165
    .line 166
    goto :goto_4

    .line 167
    :cond_8
    if-eqz v0, :cond_9

    .line 168
    .line 169
    sget v0, Lteam/opay/pay/R$drawable;->shape_white_bottom_12:I

    .line 170
    .line 171
    invoke-static {v2, v0}, Lzq2;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    invoke-virtual {v1, v0}, Lteam/opay/pay/transaction/BillCenterViewHolder;->m(Landroid/graphics/drawable/Drawable;)V

    .line 176
    .line 177
    .line 178
    goto :goto_4

    .line 179
    :cond_9
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 180
    .line 181
    sget v3, Lteam/opay/pay/R$color;->osdk_color_white:I

    .line 182
    .line 183
    invoke-static {v2, v3}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 184
    .line 185
    .line 186
    move-result v2

    .line 187
    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v1, v0}, Lteam/opay/pay/transaction/BillCenterViewHolder;->m(Landroid/graphics/drawable/Drawable;)V

    .line 191
    .line 192
    .line 193
    :cond_a
    :goto_4
    invoke-virtual {p0, p2}, Lcom/opay/team/newhome/home/HomeAdapter;->getItemViewType(I)I

    .line 194
    .line 195
    .line 196
    move-result p2

    .line 197
    const/16 v0, 0x11

    .line 198
    .line 199
    if-ne p2, v0, :cond_b

    .line 200
    .line 201
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 202
    .line 203
    sget p2, Lteam/opay/pay/R$drawable;->omain_shape_white_12:I

    .line 204
    .line 205
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 206
    .line 207
    .line 208
    :cond_b
    return-void
.end method

.method public J(Landroid/view/ViewGroup;I)Lcom/opay/team/newhome/home/holder/HomeViewHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "parent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "inflate(...)"

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    packed-switch p2, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    :pswitch_0
    new-instance p2, Lcom/opay/team/newhome/home/holder/OtherServicesViewHolder;

    .line 21
    .line 22
    invoke-static {v0, p1, v2}, Lfja;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfja;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-direct {p2, p1}, Lcom/opay/team/newhome/home/holder/OtherServicesViewHolder;-><init>(Lfja;)V

    .line 30
    .line 31
    .line 32
    goto/16 :goto_0

    .line 33
    .line 34
    :pswitch_1
    new-instance p2, Lcom/opay/team/newhome/home/holder/HomeKycBannerViewHolder;

    .line 35
    .line 36
    invoke-static {v0, p1, v2}, Ljja;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ljja;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-direct {p2, p1}, Lcom/opay/team/newhome/home/holder/HomeKycBannerViewHolder;-><init>(Ljja;)V

    .line 44
    .line 45
    .line 46
    goto/16 :goto_0

    .line 47
    .line 48
    :pswitch_2
    new-instance p2, Lcom/opay/team/newhome/home/holder/HomeKBoxStyle3ViewHolder;

    .line 49
    .line 50
    invoke-static {v0, p1, v2}, Lm07;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lm07;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/opay/team/newhome/home/HomeAdapter;->f:Lkotlin/jvm/functions/Function1;

    .line 58
    .line 59
    invoke-direct {p2, p1, v0}, Lcom/opay/team/newhome/home/holder/HomeKBoxStyle3ViewHolder;-><init>(Lm07;Lkotlin/jvm/functions/Function1;)V

    .line 60
    .line 61
    .line 62
    goto/16 :goto_0

    .line 63
    .line 64
    :pswitch_3
    new-instance p2, Lcom/opay/team/newhome/home/holder/HomeBannerViewHolder;

    .line 65
    .line 66
    invoke-static {v0, p1, v2}, Leja;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Leja;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    const/4 v0, 0x4

    .line 74
    invoke-direct {p2, p1, v0}, Lcom/opay/team/newhome/home/holder/HomeBannerViewHolder;-><init>(Leja;I)V

    .line 75
    .line 76
    .line 77
    goto/16 :goto_0

    .line 78
    .line 79
    :pswitch_4
    new-instance p2, Lteam/opay/pay/transaction/HomeBillErrorHolder;

    .line 80
    .line 81
    sget v0, Lteam/opay/pay/R$layout;->item_home_bill_error:I

    .line 82
    .line 83
    invoke-static {p1, v0, v2}, Lozf;->a(Landroid/view/ViewGroup;IZ)Landroid/view/View;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-direct {p2, p1}, Lteam/opay/pay/transaction/HomeBillErrorHolder;-><init>(Landroid/view/View;)V

    .line 88
    .line 89
    .line 90
    goto/16 :goto_0

    .line 91
    .line 92
    :pswitch_5
    new-instance p2, Lteam/opay/pay/transaction/BillCenterViewHolder;

    .line 93
    .line 94
    sget v0, Lteam/opay/pay/R$layout;->item_home_transaction_data:I

    .line 95
    .line 96
    invoke-static {p1, v0, v2}, Lozf;->a(Landroid/view/ViewGroup;IZ)Landroid/view/View;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    const-string v0, "from_home"

    .line 101
    .line 102
    invoke-direct {p2, p1, v0}, Lteam/opay/pay/transaction/BillCenterViewHolder;-><init>(Landroid/view/View;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    goto/16 :goto_0

    .line 106
    .line 107
    :pswitch_6
    new-instance p2, Lcom/opay/team/newhome/home/holder/HomeSecurityComponentViewHolder;

    .line 108
    .line 109
    invoke-static {v0, p1, v2}, Lkja;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lkja;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    iget-object v0, p0, Lcom/opay/team/newhome/home/HomeAdapter;->g:Lkotlin/jvm/functions/Function1;

    .line 117
    .line 118
    iget-object v1, p0, Lcom/opay/team/newhome/home/HomeAdapter;->h:Lkotlin/jvm/functions/Function1;

    .line 119
    .line 120
    invoke-direct {p2, p1, v0, v1}, Lcom/opay/team/newhome/home/holder/HomeSecurityComponentViewHolder;-><init>(Lkja;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :pswitch_7
    new-instance p2, Lcom/opay/team/newhome/home/holder/HomeHeadFunViewHolder;

    .line 125
    .line 126
    invoke-static {v0, p1, v2}, Lhja;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lhja;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-direct {p2, p1}, Lcom/opay/team/newhome/home/holder/HomeHeadFunViewHolder;-><init>(Lhja;)V

    .line 134
    .line 135
    .line 136
    goto :goto_0

    .line 137
    :pswitch_8
    new-instance p2, Lcom/opay/team/newhome/home/holder/HomeKBoxViewHolder;

    .line 138
    .line 139
    invoke-static {v0, p1, v2}, Lija;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lija;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    iget-object v0, p0, Lcom/opay/team/newhome/home/HomeAdapter;->e:Lkotlin/jvm/functions/Function2;

    .line 147
    .line 148
    iget-object v1, p0, Lcom/opay/team/newhome/home/HomeAdapter;->i:Lkotlin/jvm/functions/Function2;

    .line 149
    .line 150
    invoke-direct {p2, p1, v0, v1}, Lcom/opay/team/newhome/home/holder/HomeKBoxViewHolder;-><init>(Lija;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    .line 151
    .line 152
    .line 153
    goto :goto_0

    .line 154
    :pswitch_9
    new-instance p2, Lcom/opay/team/newhome/home/holder/HomeBannerViewHolder;

    .line 155
    .line 156
    invoke-static {v0, p1, v2}, Leja;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Leja;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    const/4 v0, 0x3

    .line 164
    invoke-direct {p2, p1, v0}, Lcom/opay/team/newhome/home/holder/HomeBannerViewHolder;-><init>(Leja;I)V

    .line 165
    .line 166
    .line 167
    goto :goto_0

    .line 168
    :pswitch_a
    new-instance p2, Lcom/opay/team/newhome/home/holder/HomeAnnouncementViewHolder;

    .line 169
    .line 170
    invoke-static {v0, p1, v2}, Ldja;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ldja;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    invoke-direct {p2, p1}, Lcom/opay/team/newhome/home/holder/HomeAnnouncementViewHolder;-><init>(Ldja;)V

    .line 178
    .line 179
    .line 180
    goto :goto_0

    .line 181
    :pswitch_b
    new-instance p2, Lcom/opay/team/newhome/home/holder/HomeFinanceViewHolder;

    .line 182
    .line 183
    invoke-static {v0, p1, v2}, Lfja;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfja;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    invoke-direct {p2, p1}, Lcom/opay/team/newhome/home/holder/HomeFinanceViewHolder;-><init>(Lfja;)V

    .line 191
    .line 192
    .line 193
    goto :goto_0

    .line 194
    :pswitch_c
    new-instance p2, Lcom/opay/team/newhome/home/holder/HomeBannerViewHolder;

    .line 195
    .line 196
    invoke-static {v0, p1, v2}, Leja;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Leja;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    const/4 v0, 0x2

    .line 204
    invoke-direct {p2, p1, v0}, Lcom/opay/team/newhome/home/holder/HomeBannerViewHolder;-><init>(Leja;I)V

    .line 205
    .line 206
    .line 207
    goto :goto_0

    .line 208
    :pswitch_d
    new-instance p2, Lcom/opay/team/newhome/home/holder/HomeBannerViewHolder;

    .line 209
    .line 210
    invoke-static {v0, p1, v2}, Leja;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Leja;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    const/4 v0, 0x1

    .line 218
    invoke-direct {p2, p1, v0}, Lcom/opay/team/newhome/home/holder/HomeBannerViewHolder;-><init>(Leja;I)V

    .line 219
    .line 220
    .line 221
    goto :goto_0

    .line 222
    :pswitch_e
    new-instance p2, Lcom/opay/team/newhome/home/holder/HomeHeadViewHolder;

    .line 223
    .line 224
    invoke-static {v0, p1, v2}, Lgja;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lgja;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    invoke-direct {p2, p1}, Lcom/opay/team/newhome/home/holder/HomeHeadViewHolder;-><init>(Lgja;)V

    .line 232
    .line 233
    .line 234
    :goto_0
    instance-of p1, p2, Lcom/opay/team/newhome/home/holder/HomeConfigListViewHolder;

    .line 235
    .line 236
    if-eqz p1, :cond_0

    .line 237
    .line 238
    move-object p1, p2

    .line 239
    check-cast p1, Lcom/opay/team/newhome/home/holder/HomeConfigListViewHolder;

    .line 240
    .line 241
    iget-object v0, p0, Lcom/opay/team/newhome/home/HomeAdapter;->b:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    .line 242
    .line 243
    invoke-virtual {p1, v0}, Lcom/opay/team/newhome/home/holder/HomeConfigListViewHolder;->j(Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;)V

    .line 244
    .line 245
    .line 246
    :cond_0
    return-object p2

    .line 247
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final L(Landroidx/recyclerview/widget/RecyclerView;Lcom/opay/team/newhome/reward/WidgetModule;)V
    .locals 4
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/opay/team/newhome/reward/WidgetModule;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "recyclerView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/opay/team/newhome/home/HomeAdapter;->a:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Lcom/opay/team/newhome/home/bean/HomeData;

    .line 24
    .line 25
    invoke-virtual {v2}, Lcom/opay/team/newhome/home/bean/HomeData;->f()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const/16 v3, 0xc

    .line 30
    .line 31
    if-ne v2, v3, :cond_0

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 v1, -0x1

    .line 38
    :goto_1
    if-ltz v1, :cond_5

    .line 39
    .line 40
    iget-object v0, p0, Lcom/opay/team/newhome/home/HomeAdapter;->a:Ljava/util/List;

    .line 41
    .line 42
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Lcom/opay/team/newhome/home/bean/HomeData;

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/opay/team/newhome/home/bean/HomeData;->i()Lcom/opay/team/newhome/reward/HomeKBoxRsp;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const/4 v2, 0x0

    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/opay/team/newhome/reward/HomeKBoxRsp;->j()Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    goto :goto_2

    .line 60
    :cond_2
    move-object v0, v2

    .line 61
    :goto_2
    invoke-static {v0}, Lkotlin/jvm/internal/TypeIntrinsics;->n(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-eqz v3, :cond_3

    .line 66
    .line 67
    invoke-static {v0}, Lkotlin/jvm/internal/TypeIntrinsics;->a(Ljava/lang/Object;)Ljava/util/Collection;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-interface {v0, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    :cond_3
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    instance-of v0, p1, Lcom/opay/team/newhome/home/holder/HomeKBoxViewHolder;

    .line 79
    .line 80
    if-eqz v0, :cond_4

    .line 81
    .line 82
    move-object v2, p1

    .line 83
    check-cast v2, Lcom/opay/team/newhome/home/holder/HomeKBoxViewHolder;

    .line 84
    .line 85
    :cond_4
    if-eqz v2, :cond_5

    .line 86
    .line 87
    invoke-virtual {v2, p2}, Lcom/opay/team/newhome/home/holder/HomeKBoxViewHolder;->n(Lcom/opay/team/newhome/reward/WidgetModule;)V

    .line 88
    .line 89
    .line 90
    :cond_5
    return-void
.end method

.method public final Q(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/home/HomeAdapter;->a:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lcom/opay/team/newhome/home/bean/HomeData;

    .line 19
    .line 20
    invoke-virtual {v2}, Lcom/opay/team/newhome/home/bean/HomeData;->f()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-ne v2, p1, :cond_0

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 v1, -0x1

    .line 31
    :goto_1
    if-ltz v1, :cond_2

    .line 32
    .line 33
    iget-object p1, p0, Lcom/opay/team/newhome/home/HomeAdapter;->a:Ljava/util/List;

    .line 34
    .line 35
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 39
    .line 40
    .line 41
    :cond_2
    return-void
.end method

.method public final R(Lcom/opay/team/newhome/home/bean/HomeData;)V
    .locals 4
    .param p1    # Lcom/opay/team/newhome/home/bean/HomeData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "homeData"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/opay/team/newhome/home/HomeAdapter;->a:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Lcom/opay/team/newhome/home/bean/HomeData;

    .line 24
    .line 25
    invoke-virtual {v2}, Lcom/opay/team/newhome/home/bean/HomeData;->f()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const/4 v3, 0x2

    .line 30
    if-ne v2, v3, :cond_0

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v1, -0x1

    .line 37
    :goto_1
    if-ltz v1, :cond_2

    .line 38
    .line 39
    iget-object v0, p0, Lcom/opay/team/newhome/home/HomeAdapter;->a:Ljava/util/List;

    .line 40
    .line 41
    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 45
    .line 46
    .line 47
    :cond_2
    return-void
.end method

.method public final S(Lcom/opay/team/newhome/reward/HomeKBoxRsp;Lcom/opay/team/newhome/home/bean/HomeData;)V
    .locals 1
    .param p1    # Lcom/opay/team/newhome/reward/HomeKBoxRsp;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/opay/team/newhome/home/bean/HomeData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "homeComponent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "homeItemData"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/opay/team/newhome/home/HomeAdapter;->a:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-ltz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p2, p1}, Lcom/opay/team/newhome/home/bean/HomeData;->m(Lcom/opay/team/newhome/reward/HomeKBoxRsp;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public final T(Lcom/opay/team/newhome/reward/SecurityFeel;Lcom/opay/team/newhome/home/bean/HomeData;)V
    .locals 1
    .param p1    # Lcom/opay/team/newhome/reward/SecurityFeel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/opay/team/newhome/home/bean/HomeData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "securityComponent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "homeItemData"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/opay/team/newhome/home/HomeAdapter;->a:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-ltz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p2, p1}, Lcom/opay/team/newhome/home/bean/HomeData;->n(Lcom/opay/team/newhome/reward/SecurityFeel;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public final U(Landroidx/recyclerview/widget/RecyclerView;Z)V
    .locals 4
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "recyclerView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/opay/team/newhome/home/HomeAdapter;->a:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Lcom/opay/team/newhome/home/bean/HomeData;

    .line 24
    .line 25
    invoke-virtual {v2}, Lcom/opay/team/newhome/home/bean/HomeData;->f()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const/16 v3, 0xe

    .line 30
    .line 31
    if-ne v2, v3, :cond_0

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 v1, -0x1

    .line 38
    :goto_1
    if-ltz v1, :cond_3

    .line 39
    .line 40
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    instance-of v0, p1, Lcom/opay/team/newhome/home/holder/HomeViewHolder;

    .line 45
    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    check-cast p1, Lcom/opay/team/newhome/home/holder/HomeViewHolder;

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_2
    const/4 p1, 0x0

    .line 52
    :goto_2
    if-eqz p1, :cond_3

    .line 53
    .line 54
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 55
    .line 56
    if-eqz p1, :cond_3

    .line 57
    .line 58
    sget v0, Lteam/opay/pay/R$id;->security_loading_group:I

    .line 59
    .line 60
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    if-eqz p1, :cond_3

    .line 65
    .line 66
    invoke-static {p1, p2}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 67
    .line 68
    .line 69
    :cond_3
    return-void
.end method

.method public final V(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/opay/team/newhome/home/HomeAdapter;->c:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Lcom/opay/team/newhome/home/HomeAdapter;->c:Z

    .line 7
    .line 8
    return-void
.end method

.method public final W(Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Lcom/opay/team/newhome/reward/WidgetModule;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/opay/team/newhome/home/HomeAdapter;->e:Lkotlin/jvm/functions/Function2;

    .line 7
    .line 8
    return-void
.end method

.method public final X(Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Lcom/opay/team/newhome/reward/WidgetModule;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/opay/team/newhome/home/HomeAdapter;->i:Lkotlin/jvm/functions/Function2;

    .line 7
    .line 8
    return-void
.end method

.method public final Y(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/opay/team/newhome/reward/WidgetModule;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/opay/team/newhome/home/HomeAdapter;->f:Lkotlin/jvm/functions/Function1;

    .line 7
    .line 8
    return-void
.end method

.method public final Z(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/opay/team/newhome/reward/SecurityOptionContent;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/opay/team/newhome/home/HomeAdapter;->g:Lkotlin/jvm/functions/Function1;

    .line 7
    .line 8
    return-void
.end method

.method public final a0(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/opay/team/newhome/home/HomeAdapter;->h:Lkotlin/jvm/functions/Function1;

    .line 7
    .line 8
    return-void
.end method

.method public final c0(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 4
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "recyclerView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    instance-of v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    if-nez v0, :cond_1

    .line 19
    .line 20
    goto :goto_2

    .line 21
    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const/4 v2, -0x1

    .line 30
    if-eq v1, v2, :cond_4

    .line 31
    .line 32
    if-ne v0, v2, :cond_2

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_2
    if-gt v1, v0, :cond_4

    .line 36
    .line 37
    :goto_1
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    instance-of v3, v2, Lcom/opay/team/newhome/home/holder/HomeKBoxViewHolder;

    .line 42
    .line 43
    if-eqz v3, :cond_3

    .line 44
    .line 45
    check-cast v2, Lcom/opay/team/newhome/home/holder/HomeKBoxViewHolder;

    .line 46
    .line 47
    invoke-virtual {v2}, Lcom/opay/team/newhome/home/holder/HomeKBoxViewHolder;->r()V

    .line 48
    .line 49
    .line 50
    :cond_3
    if-eq v1, v0, :cond_4

    .line 51
    .line 52
    add-int/lit8 v1, v1, 0x1

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_4
    :goto_2
    return-void
.end method

.method public final d0(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 4
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "recyclerView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    instance-of v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    if-nez v0, :cond_1

    .line 19
    .line 20
    goto :goto_2

    .line 21
    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const/4 v2, -0x1

    .line 30
    if-eq v1, v2, :cond_4

    .line 31
    .line 32
    if-ne v0, v2, :cond_2

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_2
    if-gt v1, v0, :cond_4

    .line 36
    .line 37
    :goto_1
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    instance-of v3, v2, Lcom/opay/team/newhome/home/holder/HomeKBoxViewHolder;

    .line 42
    .line 43
    if-eqz v3, :cond_3

    .line 44
    .line 45
    check-cast v2, Lcom/opay/team/newhome/home/holder/HomeKBoxViewHolder;

    .line 46
    .line 47
    invoke-virtual {v2}, Lcom/opay/team/newhome/home/holder/HomeKBoxViewHolder;->s()V

    .line 48
    .line 49
    .line 50
    :cond_3
    if-eq v1, v0, :cond_4

    .line 51
    .line 52
    add-int/lit8 v1, v1, 0x1

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_4
    :goto_2
    return-void
.end method

.method public final e0(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 4
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "recyclerView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    instance-of v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    if-nez v0, :cond_1

    .line 19
    .line 20
    goto :goto_2

    .line 21
    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const/4 v2, -0x1

    .line 30
    if-eq v1, v2, :cond_4

    .line 31
    .line 32
    if-ne v0, v2, :cond_2

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_2
    if-gt v1, v0, :cond_4

    .line 36
    .line 37
    :goto_1
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    instance-of v3, v2, Lcom/opay/team/newhome/home/holder/HomeAnnouncementViewHolder;

    .line 42
    .line 43
    if-eqz v3, :cond_3

    .line 44
    .line 45
    check-cast v2, Lcom/opay/team/newhome/home/holder/HomeAnnouncementViewHolder;

    .line 46
    .line 47
    invoke-virtual {v2}, Lcom/opay/team/newhome/home/holder/HomeAnnouncementViewHolder;->c()V

    .line 48
    .line 49
    .line 50
    :cond_3
    if-eq v1, v0, :cond_4

    .line 51
    .line 52
    add-int/lit8 v1, v1, 0x1

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_4
    :goto_2
    return-void
.end method

.method public final declared-synchronized f0(Ljava/util/List;Ljava/lang/String;)V
    .locals 25
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
            "Lteam/opay/pay/transaction/TransactionInfoV2;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v2, 0x1

    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    const-string v3, "list"

    .line 6
    .line 7
    move-object/from16 v4, p1

    .line 8
    .line 9
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/opay/team/newhome/home/HomeAdapter;->w()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    new-instance v5, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    if-eqz v6, :cond_1

    .line 30
    .line 31
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    move-object v7, v6

    .line 36
    check-cast v7, Lcom/opay/team/newhome/home/bean/HomeData;

    .line 37
    .line 38
    invoke-virtual {v7}, Lcom/opay/team/newhome/home/bean/HomeData;->f()I

    .line 39
    .line 40
    .line 41
    move-result v7

    .line 42
    const/16 v8, 0x10

    .line 43
    .line 44
    if-ne v7, v8, :cond_0

    .line 45
    .line 46
    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception v0

    .line 51
    goto/16 :goto_7

    .line 52
    .line 53
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    invoke-virtual/range {p0 .. p0}, Lcom/opay/team/newhome/home/HomeAdapter;->w()Ljava/util/List;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    if-nez v5, :cond_2

    .line 66
    .line 67
    iget-object v5, v1, Lcom/opay/team/newhome/home/HomeAdapter;->a:Ljava/util/List;

    .line 68
    .line 69
    invoke-virtual/range {p0 .. p0}, Lcom/opay/team/newhome/home/HomeAdapter;->w()Ljava/util/List;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    invoke-interface {v5, v6}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 74
    .line 75
    .line 76
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/opay/team/newhome/home/HomeAdapter;->w()Ljava/util/List;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    invoke-virtual/range {p0 .. p0}, Lcom/opay/team/newhome/home/HomeAdapter;->w()Ljava/util/List;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 89
    .line 90
    .line 91
    iget-object v6, v1, Lcom/opay/team/newhome/home/HomeAdapter;->a:Ljava/util/List;

    .line 92
    .line 93
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    const/4 v7, 0x0

    .line 98
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 99
    .line 100
    .line 101
    move-result v8

    .line 102
    if-eqz v8, :cond_4

    .line 103
    .line 104
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v8

    .line 108
    check-cast v8, Lcom/opay/team/newhome/home/bean/HomeData;

    .line 109
    .line 110
    invoke-virtual {v8}, Lcom/opay/team/newhome/home/bean/HomeData;->f()I

    .line 111
    .line 112
    .line 113
    move-result v8

    .line 114
    const/4 v9, 0x2

    .line 115
    if-ne v8, v9, :cond_3

    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_3
    add-int/2addr v7, v2

    .line 119
    goto :goto_1

    .line 120
    :cond_4
    const/4 v7, -0x1

    .line 121
    :goto_2
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->isEmpty()Z

    .line 122
    .line 123
    .line 124
    move-result v6

    .line 125
    if-nez v6, :cond_8

    .line 126
    .line 127
    const-string v6, ""

    .line 128
    .line 129
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 134
    .line 135
    .line 136
    move-result v8

    .line 137
    if-eqz v8, :cond_7

    .line 138
    .line 139
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v8

    .line 143
    check-cast v8, Lteam/opay/pay/transaction/TransactionInfoV2;

    .line 144
    .line 145
    invoke-virtual/range {p0 .. p0}, Lcom/opay/team/newhome/home/HomeAdapter;->w()Ljava/util/List;

    .line 146
    .line 147
    .line 148
    move-result-object v15

    .line 149
    new-instance v14, Lcom/opay/team/newhome/home/bean/HomeData;

    .line 150
    .line 151
    const/16 v22, 0xbfe

    .line 152
    .line 153
    const/16 v23, 0x0

    .line 154
    .line 155
    const/16 v10, 0x10

    .line 156
    .line 157
    const/4 v11, 0x0

    .line 158
    const/4 v12, 0x0

    .line 159
    const/4 v13, 0x0

    .line 160
    const/16 v16, 0x0

    .line 161
    .line 162
    const/16 v17, 0x0

    .line 163
    .line 164
    const/16 v18, 0x0

    .line 165
    .line 166
    const/16 v19, 0x0

    .line 167
    .line 168
    const/16 v20, 0x0

    .line 169
    .line 170
    const/16 v21, 0x0

    .line 171
    .line 172
    const/16 v24, 0x0

    .line 173
    .line 174
    move-object v9, v14

    .line 175
    move-object v0, v14

    .line 176
    move-object/from16 v14, v16

    .line 177
    .line 178
    move-object v2, v15

    .line 179
    move-object/from16 v15, v17

    .line 180
    .line 181
    move-object/from16 v16, v18

    .line 182
    .line 183
    move-object/from16 v17, v19

    .line 184
    .line 185
    move-object/from16 v18, v20

    .line 186
    .line 187
    move-object/from16 v19, v21

    .line 188
    .line 189
    move-object/from16 v20, v8

    .line 190
    .line 191
    move-object/from16 v21, v24

    .line 192
    .line 193
    invoke-direct/range {v9 .. v23}, Lcom/opay/team/newhome/home/bean/HomeData;-><init>(IILcom/opay/team/newhome/bean/CommonPayData;Ljava/util/List;Ljava/util/List;Lteam/opay/core/api/graphql/HomeBalance;Ljava/util/List;Lcom/opay/team/newhome/home/bean/AmountError;Lcom/opay/team/newhome/reward/HomeKBoxRsp;Lcom/opay/team/newhome/reward/SecurityFeel;Lteam/opay/pay/transaction/TransactionInfoV2;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 194
    .line 195
    .line 196
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    if-eqz v3, :cond_6

    .line 200
    .line 201
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    .line 202
    .line 203
    .line 204
    move-result v0

    .line 205
    if-nez v0, :cond_5

    .line 206
    .line 207
    invoke-virtual {v8}, Lteam/opay/pay/transaction/TransactionInfoV2;->h()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    invoke-virtual {v8}, Lteam/opay/pay/transaction/TransactionInfoV2;->i()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    invoke-virtual {v8}, Lteam/opay/pay/transaction/TransactionInfoV2;->b()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v8

    .line 219
    new-instance v9, Ljava/lang/StringBuilder;

    .line 220
    .line 221
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    const-string v0, ":"

    .line 228
    .line 229
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    const-string v0, "|"

    .line 236
    .line 237
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    :goto_4
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    goto :goto_5

    .line 248
    :cond_5
    invoke-virtual {v8}, Lteam/opay/pay/transaction/TransactionInfoV2;->h()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    invoke-virtual {v8}, Lteam/opay/pay/transaction/TransactionInfoV2;->i()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v2

    .line 256
    invoke-virtual {v8}, Lteam/opay/pay/transaction/TransactionInfoV2;->b()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v8

    .line 260
    new-instance v9, Ljava/lang/StringBuilder;

    .line 261
    .line 262
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 263
    .line 264
    .line 265
    const-string v10, ","

    .line 266
    .line 267
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    const-string v0, ":"

    .line 274
    .line 275
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    const-string v0, "|"

    .line 282
    .line 283
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    goto :goto_4

    .line 290
    :goto_5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 291
    .line 292
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    move-object v6, v0

    .line 306
    :cond_6
    const/4 v2, 0x1

    .line 307
    goto/16 :goto_3

    .line 308
    .line 309
    :cond_7
    if-eqz v3, :cond_a

    .line 310
    .line 311
    sget-object v0, Lx7b;->a:Lx7b;

    .line 312
    .line 313
    const-string v2, "home_history_page_show"

    .line 314
    .line 315
    const-string v3, "order_list"

    .line 316
    .line 317
    invoke-static {v3, v6}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 318
    .line 319
    .line 320
    move-result-object v3

    .line 321
    const/4 v4, 0x1

    .line 322
    new-array v6, v4, [Lkotlin/Pair;

    .line 323
    .line 324
    const/4 v4, 0x0

    .line 325
    aput-object v3, v6, v4

    .line 326
    .line 327
    invoke-virtual {v0, v2, v6}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 328
    .line 329
    .line 330
    goto :goto_6

    .line 331
    :cond_8
    if-eqz p2, :cond_a

    .line 332
    .line 333
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    .line 334
    .line 335
    .line 336
    move-result v0

    .line 337
    if-nez v0, :cond_9

    .line 338
    .line 339
    goto :goto_6

    .line 340
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/opay/team/newhome/home/HomeAdapter;->w()Ljava/util/List;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    new-instance v2, Lcom/opay/team/newhome/home/bean/HomeData;

    .line 345
    .line 346
    const/16 v21, 0x7fe

    .line 347
    .line 348
    const/16 v22, 0x0

    .line 349
    .line 350
    const/16 v9, 0x11

    .line 351
    .line 352
    const/4 v10, 0x0

    .line 353
    const/4 v11, 0x0

    .line 354
    const/4 v12, 0x0

    .line 355
    const/4 v13, 0x0

    .line 356
    const/4 v14, 0x0

    .line 357
    const/4 v15, 0x0

    .line 358
    const/16 v16, 0x0

    .line 359
    .line 360
    const/16 v17, 0x0

    .line 361
    .line 362
    const/16 v18, 0x0

    .line 363
    .line 364
    const/16 v19, 0x0

    .line 365
    .line 366
    move-object v8, v2

    .line 367
    move-object/from16 v20, p2

    .line 368
    .line 369
    invoke-direct/range {v8 .. v22}, Lcom/opay/team/newhome/home/bean/HomeData;-><init>(IILcom/opay/team/newhome/bean/CommonPayData;Ljava/util/List;Ljava/util/List;Lteam/opay/core/api/graphql/HomeBalance;Ljava/util/List;Lcom/opay/team/newhome/home/bean/AmountError;Lcom/opay/team/newhome/reward/HomeKBoxRsp;Lcom/opay/team/newhome/reward/SecurityFeel;Lteam/opay/pay/transaction/TransactionInfoV2;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 370
    .line 371
    .line 372
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    .line 374
    .line 375
    :cond_a
    :goto_6
    iget-object v0, v1, Lcom/opay/team/newhome/home/HomeAdapter;->a:Ljava/util/List;

    .line 376
    .line 377
    const/4 v2, 0x1

    .line 378
    add-int/2addr v2, v7

    .line 379
    invoke-virtual/range {p0 .. p0}, Lcom/opay/team/newhome/home/HomeAdapter;->w()Ljava/util/List;

    .line 380
    .line 381
    .line 382
    move-result-object v3

    .line 383
    invoke-interface {v0, v2, v3}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 384
    .line 385
    .line 386
    invoke-virtual {v1, v5, v7}, Lcom/opay/team/newhome/home/HomeAdapter;->H(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    .line 388
    .line 389
    monitor-exit p0

    .line 390
    return-void

    .line 391
    :goto_7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 392
    throw v0
.end method

.method public final getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/opay/team/newhome/home/bean/HomeData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/home/HomeAdapter;->a:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/home/HomeAdapter;->a:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    int-to-long v0, p1

    .line 2
    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/home/HomeAdapter;->a:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/opay/team/newhome/home/bean/HomeData;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/opay/team/newhome/home/bean/HomeData;->f()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/opay/team/newhome/home/holder/HomeViewHolder;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/home/HomeAdapter;->I(Lcom/opay/team/newhome/home/holder/HomeViewHolder;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/home/HomeAdapter;->J(Landroid/view/ViewGroup;I)Lcom/opay/team/newhome/home/holder/HomeViewHolder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final setNewData(Ljava/util/List;)V
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/opay/team/newhome/home/bean/HomeData;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "homeData"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/opay/team/newhome/home/HomeAdapter;->a:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 9
    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Lcom/opay/team/newhome/home/bean/HomeData;

    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/opay/team/newhome/home/bean/HomeData;->f()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    const/4 v3, 0x2

    .line 33
    if-ne v2, v3, :cond_0

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 v1, -0x1

    .line 40
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/opay/team/newhome/home/HomeAdapter;->w()Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-interface {p1, v1, v0}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 47
    .line 48
    .line 49
    iput-object p1, p0, Lcom/opay/team/newhome/home/HomeAdapter;->a:Ljava/util/List;

    .line 50
    .line 51
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final v()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/home/HomeAdapter;->b:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->c()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final w()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/opay/team/newhome/home/bean/HomeData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/home/HomeAdapter;->j:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/List;

    .line 8
    .line 9
    return-object v0
.end method

.method public final x()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/home/HomeAdapter;->a:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lcom/opay/team/newhome/home/bean/HomeData;

    .line 19
    .line 20
    invoke-virtual {v2}, Lcom/opay/team/newhome/home/bean/HomeData;->f()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const/16 v3, 0xd

    .line 25
    .line 26
    if-ne v2, v3, :cond_0

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 v1, -0x1

    .line 33
    :goto_1
    return v1
.end method

.method public final y()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/home/HomeAdapter;->a:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lcom/opay/team/newhome/home/bean/HomeData;

    .line 19
    .line 20
    invoke-virtual {v2}, Lcom/opay/team/newhome/home/bean/HomeData;->f()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const/4 v3, 0x5

    .line 25
    if-ne v2, v3, :cond_0

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v1, -0x1

    .line 32
    :goto_1
    return v1
.end method

.method public final z(Lcom/opay/team/newhome/home/holder/HomeBannerViewHolder;Ljava/lang/String;Lim6;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/opay/team/newhome/home/holder/HomeBannerViewHolder;",
            "Ljava/lang/String;",
            "Lim6<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/String;",
            "-[I-",
            "Landroid/view/View;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/opay/team/newhome/home/holder/HomeBannerViewHolder;->e()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_6

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x2

    .line 16
    const/4 v3, 0x0

    .line 17
    const-string v4, ""

    .line 18
    .line 19
    const/4 v5, 0x0

    .line 20
    if-eqz v1, :cond_3

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    move-object v6, v1

    .line 27
    check-cast v6, Lcom/opay/team/newhome/bean/HomeAdData;

    .line 28
    .line 29
    invoke-virtual {v6}, Lcom/opay/team/newhome/bean/HomeAdData;->a()Lcom/opay/team/newhome/bean/NewBusinessData;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    invoke-virtual {v6}, Lcom/opay/team/newhome/bean/NewBusinessData;->getAction()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    if-eqz v6, :cond_0

    .line 38
    .line 39
    if-eqz p2, :cond_1

    .line 40
    .line 41
    const-string v7, "entrance"

    .line 42
    .line 43
    invoke-static {p2, v7, p2}, Lkotlin/text/StringsKt;->l1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    if-nez v7, :cond_2

    .line 48
    .line 49
    :cond_1
    move-object v7, v4

    .line 50
    :cond_2
    invoke-static {v6, v7, v3, v2, v5}, Lkotlin/text/StringsKt;->d0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    const/4 v7, 0x1

    .line 55
    if-ne v6, v7, :cond_0

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_3
    move-object v1, v5

    .line 59
    :goto_0
    check-cast v1, Lcom/opay/team/newhome/bean/HomeAdData;

    .line 60
    .line 61
    if-eqz v1, :cond_6

    .line 62
    .line 63
    new-array p2, v2, [I

    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/opay/team/newhome/home/holder/HomeBannerViewHolder;->f()Lteam/opay/pay/widget/LoopViewPager;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    if-eqz p1, :cond_4

    .line 70
    .line 71
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    if-eqz p1, :cond_4

    .line 76
    .line 77
    invoke-virtual {p1, p2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 78
    .line 79
    .line 80
    :cond_4
    invoke-virtual {v1}, Lcom/opay/team/newhome/bean/HomeAdData;->a()Lcom/opay/team/newhome/bean/NewBusinessData;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {p1}, Lcom/opay/team/newhome/bean/NewBusinessData;->getImageIconUrl()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {v1}, Lcom/opay/team/newhome/bean/HomeAdData;->a()Lcom/opay/team/newhome/bean/NewBusinessData;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {v0}, Lcom/opay/team/newhome/bean/NewBusinessData;->getName()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    if-nez v0, :cond_5

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_5
    move-object v4, v0

    .line 100
    :goto_1
    invoke-interface {p3, p1, v4, p2, v5}, Lim6;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    :cond_6
    return-void
.end method
