package main

import (
	"github.com/gin-gonic/gin"

	"github.com/lfbdev/golang-demo-5/internal/pkg/album"
)

func main() {
	router := gin.Default()

	router.GET("/albums", album.GetAlbums)
	router.GET("/albums/:id", album.GetAlbumByID)
	router.POST("/albums", album.PostAlbums)

	router.Run("localhost:8080")
}
