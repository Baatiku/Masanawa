.class public final Lteam/opay/camera/CameraActivity$a$a;
.super Ljava/lang/Object;
.source "CameraActivity.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/camera/CameraActivity$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field public final synthetic a:Lteam/opay/camera/CameraActivity$a;


# direct methods
.method public constructor <init>(Lteam/opay/camera/CameraActivity$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/camera/CameraActivity$a$a;->a:Lteam/opay/camera/CameraActivity$a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget-object v0, p0, Lteam/opay/camera/CameraActivity$a$a;->a:Lteam/opay/camera/CameraActivity$a;

    .line 2
    .line 3
    iget-object v0, v0, Lteam/opay/camera/CameraActivity$a;->a:Lteam/opay/camera/CameraActivity;

    .line 4
    .line 5
    sget v1, Lteam/opay/camera/R$id;->mask_img:I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lteam/opay/camera/CameraActivity;->u(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/ImageView;

    .line 12
    .line 13
    const-string v1, "mask_img"

    .line 14
    .line 15
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    new-instance v1, Lteam/opay/camera/CoverDrawable;

    .line 19
    .line 20
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    .line 21
    .line 22
    iget-object v2, p0, Lteam/opay/camera/CameraActivity$a$a;->a:Lteam/opay/camera/CameraActivity$a;

    .line 23
    .line 24
    iget-object v2, v2, Lteam/opay/camera/CameraActivity$a;->a:Lteam/opay/camera/CameraActivity;

    .line 25
    .line 26
    sget v4, Lteam/opay/camera/R$color;->ocamera_half_transparent:I

    .line 27
    .line 28
    invoke-static {v2, v4}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    invoke-direct {v3, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 33
    .line 34
    .line 35
    iget-object v2, p0, Lteam/opay/camera/CameraActivity$a$a;->a:Lteam/opay/camera/CameraActivity$a;

    .line 36
    .line 37
    iget-object v2, v2, Lteam/opay/camera/CameraActivity$a;->a:Lteam/opay/camera/CameraActivity;

    .line 38
    .line 39
    sget v4, Lteam/opay/camera/R$id;->target_view_container:I

    .line 40
    .line 41
    invoke-virtual {v2, v4}, Lteam/opay/camera/CameraActivity;->u(I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 46
    .line 47
    const-string v5, "target_view_container"

    .line 48
    .line 49
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    iget-object v2, p0, Lteam/opay/camera/CameraActivity$a$a;->a:Lteam/opay/camera/CameraActivity$a;

    .line 57
    .line 58
    iget-object v2, v2, Lteam/opay/camera/CameraActivity$a;->a:Lteam/opay/camera/CameraActivity;

    .line 59
    .line 60
    invoke-virtual {v2, v4}, Lteam/opay/camera/CameraActivity;->u(I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 65
    .line 66
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    .line 70
    .line 71
    .line 72
    move-result v7

    .line 73
    iget-object v2, p0, Lteam/opay/camera/CameraActivity$a$a;->a:Lteam/opay/camera/CameraActivity$a;

    .line 74
    .line 75
    iget-object v2, v2, Lteam/opay/camera/CameraActivity$a;->a:Lteam/opay/camera/CameraActivity;

    .line 76
    .line 77
    invoke-virtual {v2, v4}, Lteam/opay/camera/CameraActivity;->u(I)Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 82
    .line 83
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    .line 87
    .line 88
    .line 89
    move-result v8

    .line 90
    iget-object v2, p0, Lteam/opay/camera/CameraActivity$a$a;->a:Lteam/opay/camera/CameraActivity$a;

    .line 91
    .line 92
    iget-object v2, v2, Lteam/opay/camera/CameraActivity$a;->a:Lteam/opay/camera/CameraActivity;

    .line 93
    .line 94
    invoke-virtual {v2, v4}, Lteam/opay/camera/CameraActivity;->u(I)Landroid/view/View;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 99
    .line 100
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    iget-object v4, p0, Lteam/opay/camera/CameraActivity$a$a;->a:Lteam/opay/camera/CameraActivity$a;

    .line 108
    .line 109
    iget-object v4, v4, Lteam/opay/camera/CameraActivity$a;->a:Lteam/opay/camera/CameraActivity;

    .line 110
    .line 111
    invoke-static {v4}, Lteam/opay/camera/CameraActivity;->D(Lteam/opay/camera/CameraActivity;)I

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    add-int v9, v2, v4

    .line 116
    .line 117
    iget-object v2, p0, Lteam/opay/camera/CameraActivity$a$a;->a:Lteam/opay/camera/CameraActivity$a;

    .line 118
    .line 119
    iget-object v2, v2, Lteam/opay/camera/CameraActivity$a;->a:Lteam/opay/camera/CameraActivity;

    .line 120
    .line 121
    const/16 v4, 0xc

    .line 122
    .line 123
    invoke-static {v2, v4}, Lteam/opay/camera/CameraActivity;->w(Lteam/opay/camera/CameraActivity;I)I

    .line 124
    .line 125
    .line 126
    move-result v10

    .line 127
    iget-object v2, p0, Lteam/opay/camera/CameraActivity$a$a;->a:Lteam/opay/camera/CameraActivity$a;

    .line 128
    .line 129
    iget-object v2, v2, Lteam/opay/camera/CameraActivity$a;->a:Lteam/opay/camera/CameraActivity;

    .line 130
    .line 131
    invoke-static {v2, v4}, Lteam/opay/camera/CameraActivity;->w(Lteam/opay/camera/CameraActivity;I)I

    .line 132
    .line 133
    .line 134
    move-result v11

    .line 135
    move-object v2, v1

    .line 136
    move v4, v6

    .line 137
    move v5, v7

    .line 138
    move v6, v8

    .line 139
    move v7, v9

    .line 140
    move v8, v10

    .line 141
    move v9, v11

    .line 142
    invoke-direct/range {v2 .. v9}, Lteam/opay/camera/CoverDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIIIII)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 146
    .line 147
    .line 148
    return-void
.end method
